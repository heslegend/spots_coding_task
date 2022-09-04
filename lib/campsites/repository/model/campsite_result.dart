import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';
import 'package:spots_coding_task/shared/networking/spots_error.dart';

part 'campsite_result.freezed.dart';

@freezed
class CampsitesResult with _$CampsitesResult {
  factory CampsitesResult.success({required List<Campsite> campsites}) =
      Success;
  factory CampsitesResult.error(SpotsError error) = Error;
}
