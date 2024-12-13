// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adddress_select.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CPDM _$CPDMFromJson(Map<String, dynamic> json) {
  return _CPDM.fromJson(json);
}

/// @nodoc
mixin _$CPDM {
  String get countryId => throw _privateConstructorUsedError;
  String get provinceId => throw _privateConstructorUsedError;
  String get areasId => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;

  /// Serializes this CPDM to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CPDM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CPDMCopyWith<CPDM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPDMCopyWith<$Res> {
  factory $CPDMCopyWith(CPDM value, $Res Function(CPDM) then) =
      _$CPDMCopyWithImpl<$Res, CPDM>;
  @useResult
  $Res call(
      {String countryId, String provinceId, String areasId, String cityId});
}

/// @nodoc
class _$CPDMCopyWithImpl<$Res, $Val extends CPDM>
    implements $CPDMCopyWith<$Res> {
  _$CPDMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CPDM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? provinceId = null,
    Object? areasId = null,
    Object? cityId = null,
  }) {
    return _then(_value.copyWith(
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      areasId: null == areasId
          ? _value.areasId
          : areasId // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CPDMImplCopyWith<$Res> implements $CPDMCopyWith<$Res> {
  factory _$$CPDMImplCopyWith(
          _$CPDMImpl value, $Res Function(_$CPDMImpl) then) =
      __$$CPDMImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String countryId, String provinceId, String areasId, String cityId});
}

/// @nodoc
class __$$CPDMImplCopyWithImpl<$Res>
    extends _$CPDMCopyWithImpl<$Res, _$CPDMImpl>
    implements _$$CPDMImplCopyWith<$Res> {
  __$$CPDMImplCopyWithImpl(_$CPDMImpl _value, $Res Function(_$CPDMImpl) _then)
      : super(_value, _then);

  /// Create a copy of CPDM
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? provinceId = null,
    Object? areasId = null,
    Object? cityId = null,
  }) {
    return _then(_$CPDMImpl(
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      areasId: null == areasId
          ? _value.areasId
          : areasId // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CPDMImpl implements _CPDM {
  _$CPDMImpl(
      {this.countryId = '',
      this.provinceId = '',
      this.areasId = '',
      this.cityId = ''});

  factory _$CPDMImpl.fromJson(Map<String, dynamic> json) =>
      _$$CPDMImplFromJson(json);

  @override
  @JsonKey()
  final String countryId;
  @override
  @JsonKey()
  final String provinceId;
  @override
  @JsonKey()
  final String areasId;
  @override
  @JsonKey()
  final String cityId;

  @override
  String toString() {
    return 'CPDM(countryId: $countryId, provinceId: $provinceId, areasId: $areasId, cityId: $cityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CPDMImpl &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.areasId, areasId) || other.areasId == areasId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, countryId, provinceId, areasId, cityId);

  /// Create a copy of CPDM
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CPDMImplCopyWith<_$CPDMImpl> get copyWith =>
      __$$CPDMImplCopyWithImpl<_$CPDMImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CPDMImplToJson(
      this,
    );
  }
}

abstract class _CPDM implements CPDM {
  factory _CPDM(
      {final String countryId,
      final String provinceId,
      final String areasId,
      final String cityId}) = _$CPDMImpl;

  factory _CPDM.fromJson(Map<String, dynamic> json) = _$CPDMImpl.fromJson;

  @override
  String get countryId;
  @override
  String get provinceId;
  @override
  String get areasId;
  @override
  String get cityId;

  /// Create a copy of CPDM
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CPDMImplCopyWith<_$CPDMImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
