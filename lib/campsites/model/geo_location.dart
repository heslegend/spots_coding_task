import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_location.freezed.dart';
part 'geo_location.g.dart';

@freezed
class GeoLocation with _$GeoLocation {
  const factory GeoLocation({
    required double latitude,
    required double longitude,
  }) = _GeoLocation;

  factory GeoLocation.fromJson(Map<String, Object?> json) =>
      _$GeoLocationFromJson(json);
}
