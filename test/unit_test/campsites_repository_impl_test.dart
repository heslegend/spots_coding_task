import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:riverpod/riverpod.dart';
import 'package:spots_coding_task/campsites/repository/campsites_repository_impl.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite_result.dart';
import 'package:spots_coding_task/shared/networking/dio_client.dart';
import 'package:spots_coding_task/shared/networking/spots_error.dart';
import 'package:test/test.dart';

import '../util/fake_objects.dart';
import '../util/mock_response.dart';

void main() {
  late DioAdapter dioAdapter;
  late ProviderContainer container;
  const campsitesPath = '/campsites';

  setUp(() {
    container = ProviderContainer();
    dioAdapter = DioAdapter(dio: container.read(dioClientProvider));
  });
  group('getCampsites()', () {
    group('success case', () {
      test('returns CampsitesResult.sucess on success', () async {
        dioAdapter.onGet(
            campsitesPath, (server) => server.reply(200, mockResponseSuccess));

        final campsitesResult =
            await container.read(campsitesRepositoryProvider).getCampsites();

        expect(campsitesResult, isA<Success>());
      });

      test('parses correct number of elements out of full json response',
          () async {
        dioAdapter.onGet(
            campsitesPath, (server) => server.reply(200, mockResponseSuccess));

        final campsitesResult =
            await container.read(campsitesRepositoryProvider).getCampsites();

        expect(campsitesResult, isA<Success>());
        expect((campsitesResult as Success).campsites.length, equals(50));
      });

      test('correctly parses single campsite out of json response', () async {
        final expectedCampsite = fakeCampsites.first;

        dioAdapter.onGet(campsitesPath,
            (server) => server.reply(200, [expectedCampsite.toJson()]));

        final campsitesResult =
            await container.read(campsitesRepositoryProvider).getCampsites();

        final decodedCampsite = (campsitesResult as Success).campsites.first;

        expect(expectedCampsite, decodedCampsite);
      });
    });

    group('error case', () {
      test('returns expected message when json property is missing', () async {
        dioAdapter.onGet(campsitesPath,
            (server) => server.reply(200, mockResponseJsonSyntaxError));

        final campsitesResult =
            await container.read(campsitesRepositoryProvider).getCampsites();

        expect(campsitesResult, isA<Error>());
        expect((campsitesResult as Error).error.message,
            equals(SpotsError.generic().message));
      });

      test('returns expected message on SocketException', () async {
        final dioError = DioError(
          requestOptions: RequestOptions(path: campsitesPath),
          type: DioErrorType.other,
          error: SocketException,
        );

        dioAdapter.onGet(
          campsitesPath,
          (server) => server.throws(0, dioError),
        );

        final campsitesResult =
            await container.read(campsitesRepositoryProvider).getCampsites();

        expect(campsitesResult, isA<Error>());
        expect((campsitesResult as Error).error.message,
            equals('No Internet - Please check your network settings'));
      });

      group('http errors', () {
        void testHttpError(int httpStatusCode) {
          test(
            'returns expected message on $httpStatusCode',
            () async {
              dioAdapter.onGet(
                  campsitesPath, (server) => server.reply(httpStatusCode, {}));

              final campsitesResult = await container
                  .read(campsitesRepositoryProvider)
                  .getCampsites();

              expect(campsitesResult, isA<Error>());
              expect((campsitesResult as Error).error.message,
                  equals('$httpStatusCode - we are working on it!'));
            },
          );
        }

        group('400-499', () {
          testHttpError(HttpStatus.badRequest);
          testHttpError(HttpStatus.unauthorized);
          testHttpError(HttpStatus.paymentRequired);
          testHttpError(HttpStatus.forbidden);
          testHttpError(HttpStatus.notFound);

          /// .. More tests go here
        });

        group('500-599', () {
          testHttpError(HttpStatus.internalServerError);
          testHttpError(HttpStatus.notImplemented);
          testHttpError(HttpStatus.badGateway);
          testHttpError(HttpStatus.serviceUnavailable);
          testHttpError(HttpStatus.gatewayTimeout);

          /// .. More tests go here
        });
      });
    });
  });
}
