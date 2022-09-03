// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campsite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Campsite _$$_CampsiteFromJson(Map<String, dynamic> json) => _$_Campsite(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      label: json['label'] as String,
      photoUrl: json['photoUrl'] as String,
      geoLocation:
          GeoLocation.fromJson(json['geoLocation'] as Map<String, dynamic>),
      isCloseToWater: json['isCloseToWater'] as bool,
      isCampfireAllowed: json['isCampfireAllowed'] as bool,
      hostLanguages: (json['hostLanguages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      pricePerNight: (json['pricePerNight'] as num).toDouble(),
      suitableFor: (json['suitableFor'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CampsiteToJson(_$_Campsite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'label': instance.label,
      'photoUrl': instance.photoUrl,
      'geoLocation': instance.geoLocation,
      'isCloseToWater': instance.isCloseToWater,
      'isCampfireAllowed': instance.isCampfireAllowed,
      'hostLanguages': instance.hostLanguages,
      'pricePerNight': instance.pricePerNight,
      'suitableFor': instance.suitableFor,
    };
