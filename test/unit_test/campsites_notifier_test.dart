import 'package:mocktail/mocktail.dart';
import 'package:riverpod/riverpod.dart';
import 'package:spots_coding_task/campsites/repository/campsites_repository_impl.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite_result.dart'
    hide Success, Error;
import 'package:spots_coding_task/campsites/state/campsites_notifier.dart';
import 'package:spots_coding_task/campsites/state/campsites_state.dart';
import 'package:spots_coding_task/shared/networking/spots_error.dart';
import 'package:test/test.dart';

import '../util/fake_objects.dart';

class MockCampsiteRepositoryImpl extends Mock
    implements CampsitesRepositoryImpl {}

void main() {
  late ProviderContainer container;
  final mockCampsiteRepositoryImpl = MockCampsiteRepositoryImpl();

  setUp(() {
    container = ProviderContainer(overrides: [
      campsitesRepositoryProvider.overrideWithValue(mockCampsiteRepositoryImpl)
    ]);
  });

  test(
      'returns CampsiteState.loading, then CampsiteState.success with list of campsites in correct order',
      () async {
    when(() => mockCampsiteRepositoryImpl.getCampsites()).thenAnswer(
      (invocation) => Future.value(
        CampsitesResult.success(campsites: fakeCampsites),
      ),
    );

    var campsitesState = container.read(campsiteNotifierProvider);

    expect(campsitesState, isA<Loading>());

    await container.read(campsiteNotifierProvider.notifier).getCampsites();
    campsitesState = container.read(campsiteNotifierProvider);

    expect(campsitesState, isA<Success>());

    expect(
        (campsitesState as Success).campsites, equals(fakeCampsites.reversed));
  });

  test(
      'returns CampsiteState.loading, then CampsiteState.error with correct error message on CampsiteResult.error',
      () async {
    when(() => mockCampsiteRepositoryImpl.getCampsites()).thenAnswer(
      (invocation) => Future.value(
        CampsitesResult.error(SpotsError.generic()),
      ),
    );

    var campsitesState = container.read(campsiteNotifierProvider);

    expect(campsitesState, isA<Loading>());

    await container.read(campsiteNotifierProvider.notifier).getCampsites();
    campsitesState = container.read(campsiteNotifierProvider);

    expect(campsitesState, isA<Error>());

    expect((campsitesState as Error).message,
        equals(SpotsError.generic().message));
  });
}
