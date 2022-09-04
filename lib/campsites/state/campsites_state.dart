import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_coding_task/campsites/repository/model/campsite.dart';

part 'campsites_state.freezed.dart';

@freezed
class CampsitesState with _$CampsitesState {
  factory CampsitesState.success({required List<Campsite> campsites}) = Success;
  factory CampsitesState.loading() = Loading;
  factory CampsitesState.error(String message) = Error;
}
