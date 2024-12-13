// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressDataModel _$AddressDataModelFromJson(Map<String, dynamic> json) {
  return _AddressDataModel.fromJson(json);
}

/// @nodoc
mixin _$AddressDataModel {
  int get status => throw _privateConstructorUsedError;
  Map<String, String?> get data => throw _privateConstructorUsedError;

  /// Serializes this AddressDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressDataModelCopyWith<AddressDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDataModelCopyWith<$Res> {
  factory $AddressDataModelCopyWith(
          AddressDataModel value, $Res Function(AddressDataModel) then) =
      _$AddressDataModelCopyWithImpl<$Res, AddressDataModel>;
  @useResult
  $Res call({int status, Map<String, String?> data});
}

/// @nodoc
class _$AddressDataModelCopyWithImpl<$Res, $Val extends AddressDataModel>
    implements $AddressDataModelCopyWith<$Res> {
  _$AddressDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDataModelImplCopyWith<$Res>
    implements $AddressDataModelCopyWith<$Res> {
  factory _$$AddressDataModelImplCopyWith(_$AddressDataModelImpl value,
          $Res Function(_$AddressDataModelImpl) then) =
      __$$AddressDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, Map<String, String?> data});
}

/// @nodoc
class __$$AddressDataModelImplCopyWithImpl<$Res>
    extends _$AddressDataModelCopyWithImpl<$Res, _$AddressDataModelImpl>
    implements _$$AddressDataModelImplCopyWith<$Res> {
  __$$AddressDataModelImplCopyWithImpl(_$AddressDataModelImpl _value,
      $Res Function(_$AddressDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$AddressDataModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDataModelImpl implements _AddressDataModel {
  const _$AddressDataModelImpl(
      {this.status = -1, final Map<String, String?> data = const {}})
      : _data = data;

  factory _$AddressDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDataModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  final Map<String, String?> _data;
  @override
  @JsonKey()
  Map<String, String?> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'AddressDataModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDataModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDataModelImplCopyWith<_$AddressDataModelImpl> get copyWith =>
      __$$AddressDataModelImplCopyWithImpl<_$AddressDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDataModelImplToJson(
      this,
    );
  }
}

abstract class _AddressDataModel implements AddressDataModel {
  const factory _AddressDataModel(
      {final int status,
      final Map<String, String?> data}) = _$AddressDataModelImpl;

  factory _AddressDataModel.fromJson(Map<String, dynamic> json) =
      _$AddressDataModelImpl.fromJson;

  @override
  int get status;
  @override
  Map<String, String?> get data;

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressDataModelImplCopyWith<_$AddressDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
