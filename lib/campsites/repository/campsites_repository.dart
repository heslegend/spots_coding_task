import 'package:spots_coding_task/campsites/repository/model/campsite_result.dart';

abstract class CampsitesRepository {
  Future<CampsitesResult> getCampsites();
}
