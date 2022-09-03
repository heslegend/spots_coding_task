// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campsite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Campsite _$$_CampsiteFromJson(Map<String, dynamic> json) => _$_Campsite(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      label: json['label'] as String,
      isCloseToWater: json['isCloseToWater'] as bool,
      isCampFireAllowed: json['isCampFireAllowed'] as bool,
      hostLanguages: (json['hostLanguages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      pricePerNight: (json['pricePerNight'] as num).toDouble(),
      suitableFor: (json['suitableFor'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      geoLocation: json['geoLocation'] == null
          ? null
          : GeoLocation.fromJson(json['geoLocation'] as Map<String, dynamic>),
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_CampsiteToJson(_$_Campsite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'label': instance.label,
      'isCloseToWater': instance.isCloseToWater,
      'isCampFireAllowed': instance.isCampFireAllowed,
      'hostLanguages': instance.hostLanguages,
      'pricePerNight': instance.pricePerNight,
      'suitableFor': instance.suitableFor,
      'geoLocation': instance.geoLocation,
      'photo': instance.photo,
    };
