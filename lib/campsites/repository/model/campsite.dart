import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spots_coding_task/campsites/repository/model/geo_location.dart';

part 'campsite.freezed.dart';
part 'campsite.g.dart';

@freezed
class Campsite with _$Campsite {
  const factory Campsite({
    required String id,
    required DateTime createdAt,
    required String label,
    required bool isCloseToWater,
    required bool isCampFireAllowed,
    required List<String> hostLanguages,
    required double pricePerNight,
    required List<String> suitableFor,
    GeoLocation? geoLocation,
    String? photo,
  }) = _Campsite;

  factory Campsite.fromJson(Map<String, Object?> json) =>
      _$CampsiteFromJson(json);
}
