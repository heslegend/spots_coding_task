// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'campsite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Campsite _$CampsiteFromJson(Map<String, dynamic> json) {
  return _Campsite.fromJson(json);
}

/// @nodoc
mixin _$Campsite {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  GeoLocation get geoLocation => throw _privateConstructorUsedError;
  bool get isCloseToWater => throw _privateConstructorUsedError;
  bool get isCampfireAllowed => throw _privateConstructorUsedError;
  List<String> get hostLanguages => throw _privateConstructorUsedError;
  double get pricePerNight => throw _privateConstructorUsedError;
  List<String> get suitableFor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampsiteCopyWith<Campsite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampsiteCopyWith<$Res> {
  factory $CampsiteCopyWith(Campsite value, $Res Function(Campsite) then) =
      _$CampsiteCopyWithImpl<$Res>;
  $Res call(
      {int id,
      DateTime createdAt,
      String label,
      String photoUrl,
      GeoLocation geoLocation,
      bool isCloseToWater,
      bool isCampfireAllowed,
      List<String> hostLanguages,
      double pricePerNight,
      List<String> suitableFor});

  $GeoLocationCopyWith<$Res> get geoLocation;
}

/// @nodoc
class _$CampsiteCopyWithImpl<$Res> implements $CampsiteCopyWith<$Res> {
  _$CampsiteCopyWithImpl(this._value, this._then);

  final Campsite _value;
  // ignore: unused_field
  final $Res Function(Campsite) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? label = freezed,
    Object? photoUrl = freezed,
    Object? geoLocation = freezed,
    Object? isCloseToWater = freezed,
    Object? isCampfireAllowed = freezed,
    Object? hostLanguages = freezed,
    Object? pricePerNight = freezed,
    Object? suitableFor = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      geoLocation: geoLocation == freezed
          ? _value.geoLocation
          : geoLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      isCloseToWater: isCloseToWater == freezed
          ? _value.isCloseToWater
          : isCloseToWater // ignore: cast_nullable_to_non_nullable
              as bool,
      isCampfireAllowed: isCampfireAllowed == freezed
          ? _value.isCampfireAllowed
          : isCampfireAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      hostLanguages: hostLanguages == freezed
          ? _value.hostLanguages
          : hostLanguages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pricePerNight: pricePerNight == freezed
          ? _value.pricePerNight
          : pricePerNight // ignore: cast_nullable_to_non_nullable
              as double,
      suitableFor: suitableFor == freezed
          ? _value.suitableFor
          : suitableFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $GeoLocationCopyWith<$Res> get geoLocation {
    return $GeoLocationCopyWith<$Res>(_value.geoLocation, (value) {
      return _then(_value.copyWith(geoLocation: value));
    });
  }
}

/// @nodoc
abstract class _$$_CampsiteCopyWith<$Res> implements $CampsiteCopyWith<$Res> {
  factory _$$_CampsiteCopyWith(
          _$_Campsite value, $Res Function(_$_Campsite) then) =
      __$$_CampsiteCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      DateTime createdAt,
      String label,
      String photoUrl,
      GeoLocation geoLocation,
      bool isCloseToWater,
      bool isCampfireAllowed,
      List<String> hostLanguages,
      double pricePerNight,
      List<String> suitableFor});

  @override
  $GeoLocationCopyWith<$Res> get geoLocation;
}

/// @nodoc
class __$$_CampsiteCopyWithImpl<$Res> extends _$CampsiteCopyWithImpl<$Res>
    implements _$$_CampsiteCopyWith<$Res> {
  __$$_CampsiteCopyWithImpl(
      _$_Campsite _value, $Res Function(_$_Campsite) _then)
      : super(_value, (v) => _then(v as _$_Campsite));

  @override
  _$_Campsite get _value => super._value as _$_Campsite;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? label = freezed,
    Object? photoUrl = freezed,
    Object? geoLocation = freezed,
    Object? isCloseToWater = freezed,
    Object? isCampfireAllowed = freezed,
    Object? hostLanguages = freezed,
    Object? pricePerNight = freezed,
    Object? suitableFor = freezed,
  }) {
    return _then(_$_Campsite(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      geoLocation: geoLocation == freezed
          ? _value.geoLocation
          : geoLocation // ignore: cast_nullable_to_non_nullable
              as GeoLocation,
      isCloseToWater: isCloseToWater == freezed
          ? _value.isCloseToWater
          : isCloseToWater // ignore: cast_nullable_to_non_nullable
              as bool,
      isCampfireAllowed: isCampfireAllowed == freezed
          ? _value.isCampfireAllowed
          : isCampfireAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      hostLanguages: hostLanguages == freezed
          ? _value._hostLanguages
          : hostLanguages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pricePerNight: pricePerNight == freezed
          ? _value.pricePerNight
          : pricePerNight // ignore: cast_nullable_to_non_nullable
              as double,
      suitableFor: suitableFor == freezed
          ? _value._suitableFor
          : suitableFor // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Campsite implements _Campsite {
  const _$_Campsite(
      {required this.id,
      required this.createdAt,
      required this.label,
      required this.photoUrl,
      required this.geoLocation,
      required this.isCloseToWater,
      required this.isCampfireAllowed,
      required final List<String> hostLanguages,
      required this.pricePerNight,
      required final List<String> suitableFor})
      : _hostLanguages = hostLanguages,
        _suitableFor = suitableFor;

  factory _$_Campsite.fromJson(Map<String, dynamic> json) =>
      _$$_CampsiteFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final String label;
  @override
  final String photoUrl;
  @override
  final GeoLocation geoLocation;
  @override
  final bool isCloseToWater;
  @override
  final bool isCampfireAllowed;
  final List<String> _hostLanguages;
  @override
  List<String> get hostLanguages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hostLanguages);
  }

  @override
  final double pricePerNight;
  final List<String> _suitableFor;
  @override
  List<String> get suitableFor {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suitableFor);
  }

  @override
  String toString() {
    return 'Campsite(id: $id, createdAt: $createdAt, label: $label, photoUrl: $photoUrl, geoLocation: $geoLocation, isCloseToWater: $isCloseToWater, isCampfireAllowed: $isCampfireAllowed, hostLanguages: $hostLanguages, pricePerNight: $pricePerNight, suitableFor: $suitableFor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Campsite &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            const DeepCollectionEquality()
                .equals(other.geoLocation, geoLocation) &&
            const DeepCollectionEquality()
                .equals(other.isCloseToWater, isCloseToWater) &&
            const DeepCollectionEquality()
                .equals(other.isCampfireAllowed, isCampfireAllowed) &&
            const DeepCollectionEquality()
                .equals(other._hostLanguages, _hostLanguages) &&
            const DeepCollectionEquality()
                .equals(other.pricePerNight, pricePerNight) &&
            const DeepCollectionEquality()
                .equals(other._suitableFor, _suitableFor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(photoUrl),
      const DeepCollectionEquality().hash(geoLocation),
      const DeepCollectionEquality().hash(isCloseToWater),
      const DeepCollectionEquality().hash(isCampfireAllowed),
      const DeepCollectionEquality().hash(_hostLanguages),
      const DeepCollectionEquality().hash(pricePerNight),
      const DeepCollectionEquality().hash(_suitableFor));

  @JsonKey(ignore: true)
  @override
  _$$_CampsiteCopyWith<_$_Campsite> get copyWith =>
      __$$_CampsiteCopyWithImpl<_$_Campsite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CampsiteToJson(
      this,
    );
  }
}

abstract class _Campsite implements Campsite {
  const factory _Campsite(
      {required final int id,
      required final DateTime createdAt,
      required final String label,
      required final String photoUrl,
      required final GeoLocation geoLocation,
      required final bool isCloseToWater,
      required final bool isCampfireAllowed,
      required final List<String> hostLanguages,
      required final double pricePerNight,
      required final List<String> suitableFor}) = _$_Campsite;

  factory _Campsite.fromJson(Map<String, dynamic> json) = _$_Campsite.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  String get label;
  @override
  String get photoUrl;
  @override
  GeoLocation get geoLocation;
  @override
  bool get isCloseToWater;
  @override
  bool get isCampfireAllowed;
  @override
  List<String> get hostLanguages;
  @override
  double get pricePerNight;
  @override
  List<String> get suitableFor;
  @override
  @JsonKey(ignore: true)
  _$$_CampsiteCopyWith<_$_Campsite> get copyWith =>
      throw _privateConstructorUsedError;
}
