// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiModel _$ApiModelFromJson(Map<String, dynamic> json) {
  return _ApiModel.fromJson(json);
}

/// @nodoc
mixin _$ApiModel {
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors')
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  /// Serializes this ApiModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiModelCopyWith<ApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiModelCopyWith<$Res> {
  factory $ApiModelCopyWith(ApiModel value, $Res Function(ApiModel) then) =
      _$ApiModelCopyWithImpl<$Res, ApiModel>;
  @useResult
  $Res call(
      {int status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'errors') Map<String, List<String>> errors});
}

/// @nodoc
class _$ApiModelCopyWithImpl<$Res, $Val extends ApiModel>
    implements $ApiModelCopyWith<$Res> {
  _$ApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiModelImplCopyWith<$Res>
    implements $ApiModelCopyWith<$Res> {
  factory _$$ApiModelImplCopyWith(
          _$ApiModelImpl value, $Res Function(_$ApiModelImpl) then) =
      __$$ApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'errors') Map<String, List<String>> errors});
}

/// @nodoc
class __$$ApiModelImplCopyWithImpl<$Res>
    extends _$ApiModelCopyWithImpl<$Res, _$ApiModelImpl>
    implements _$$ApiModelImplCopyWith<$Res> {
  __$$ApiModelImplCopyWithImpl(
      _$ApiModelImpl _value, $Res Function(_$ApiModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = null,
  }) {
    return _then(_$ApiModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiModelImpl implements _ApiModel {
  const _$ApiModelImpl(
      {this.status = -1,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'errors')
      final Map<String, List<String>> errors = const {}})
      : _errors = errors;

  factory _$ApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey(name: 'message')
  final String message;
  final Map<String, List<String>> _errors;
  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'ApiModel(status: $status, message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of ApiModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiModelImplCopyWith<_$ApiModelImpl> get copyWith =>
      __$$ApiModelImplCopyWithImpl<_$ApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiModelImplToJson(
      this,
    );
  }
}

abstract class _ApiModel implements ApiModel {
  const factory _ApiModel(
          {final int status,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'errors') final Map<String, List<String>> errors}) =
      _$ApiModelImpl;

  factory _ApiModel.fromJson(Map<String, dynamic> json) =
      _$ApiModelImpl.fromJson;

  @override
  int get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'errors')
  Map<String, List<String>> get errors;

  /// Create a copy of ApiModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiModelImplCopyWith<_$ApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
