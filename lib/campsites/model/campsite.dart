import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_coding_task/campsites/model/geo_location.dart';

part 'campsite.freezed.dart';
part 'campsite.g.dart';

@freezed
class Campsite with _$Campsite {
  const factory Campsite({
    required int id,
    required DateTime createdAt,
    required String label,
    required String photoUrl,
    required GeoLocation geoLocation,
    required bool isCloseToWater,
    required bool isCampfireAllowed,
    required List<String> hostLanguages,
    required double pricePerNight,
    required List<String> suitableFor,
  }) = _Campsite;

  factory Campsite.fromJson(Map<String, Object?> json) =>
      _$CampsiteFromJson(json);
}
