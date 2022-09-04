import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:spots_coding_task/shared/networking/dio_client.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite_result.dart';
import 'package:spots_coding_task/shared/networking/spots_error.dart';

final campsitesRepositoryProvider =
    Provider(((ref) => CampsitesRepositoryImpl(ref)));

class CampsitesRepositoryImpl {
  CampsitesRepositoryImpl(this._ref);
  static const _classTag = 'CampsitesRepositoryImpl';
  static const _campsitesPath = '/campsites';

  final Ref _ref;

  Future<CampsitesResult> getCampsites() async {
    try {
      final response = await _ref.watch(dioClientProvider).get(_campsitesPath);

      final campsites = response.data
          .map<Campsite>((campsiteJson) => Campsite.fromJson(campsiteJson))
          .toList(growable: false);

      return CampsitesResult.success(campsites: campsites);
    } on DioError catch (e) {
      log('[$_classTag] DioError $e occured');
      return CampsitesResult.error(SpotsError.fromDioError(e));
    } on TypeError catch (e) {
      log('[$_classTag] TypeError $e occured');
      return CampsitesResult.error(SpotsError.generic());
    }
  }
}
