// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

APIResponseModel _$APIResponseModelFromJson(Map<String, dynamic> json) {
  return _APIResponseModel.fromJson(json);
}

/// @nodoc
mixin _$APIResponseModel {
  int get status => throw _privateConstructorUsedError;
  ResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $APIResponseModelCopyWith<APIResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIResponseModelCopyWith<$Res> {
  factory $APIResponseModelCopyWith(
          APIResponseModel value, $Res Function(APIResponseModel) then) =
      _$APIResponseModelCopyWithImpl<$Res, APIResponseModel>;
  @useResult
  $Res call({int status, ResponseData data});

  $ResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$APIResponseModelCopyWithImpl<$Res, $Val extends APIResponseModel>
    implements $APIResponseModelCopyWith<$Res> {
  _$APIResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as ResponseData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseDataCopyWith<$Res> get data {
    return $ResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$APIResponseModelImplCopyWith<$Res>
    implements $APIResponseModelCopyWith<$Res> {
  factory _$$APIResponseModelImplCopyWith(_$APIResponseModelImpl value,
          $Res Function(_$APIResponseModelImpl) then) =
      __$$APIResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, ResponseData data});

  @override
  $ResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$APIResponseModelImplCopyWithImpl<$Res>
    extends _$APIResponseModelCopyWithImpl<$Res, _$APIResponseModelImpl>
    implements _$$APIResponseModelImplCopyWith<$Res> {
  __$$APIResponseModelImplCopyWithImpl(_$APIResponseModelImpl _value,
      $Res Function(_$APIResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$APIResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIResponseModelImpl implements _APIResponseModel {
  const _$APIResponseModelImpl(
      {this.status = -1, this.data = const ResponseData()});

  factory _$APIResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final ResponseData data;

  @override
  String toString() {
    return 'APIResponseModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$APIResponseModelImplCopyWith<_$APIResponseModelImpl> get copyWith =>
      __$$APIResponseModelImplCopyWithImpl<_$APIResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$APIResponseModelImplToJson(
      this,
    );
  }
}

abstract class _APIResponseModel implements APIResponseModel {
  const factory _APIResponseModel({final int status, final ResponseData data}) =
      _$APIResponseModelImpl;

  factory _APIResponseModel.fromJson(Map<String, dynamic> json) =
      _$APIResponseModelImpl.fromJson;

  @override
  int get status;
  @override
  ResponseData get data;
  @override
  @JsonKey(ignore: true)
  _$$APIResponseModelImplCopyWith<_$APIResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return _ResponseData.fromJson(json);
}

/// @nodoc
mixin _$ResponseData {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res, ResponseData>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res, $Val extends ResponseData>
    implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDataImplCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$ResponseDataImplCopyWith(
          _$ResponseDataImpl value, $Res Function(_$ResponseDataImpl) then) =
      __$$ResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResponseDataImplCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res, _$ResponseDataImpl>
    implements _$$ResponseDataImplCopyWith<$Res> {
  __$$ResponseDataImplCopyWithImpl(
      _$ResponseDataImpl _value, $Res Function(_$ResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ResponseDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataImpl implements _ResponseData {
  const _$ResponseDataImpl({this.message = ''});

  factory _$ResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ResponseData(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDataImplCopyWith<_$ResponseDataImpl> get copyWith =>
      __$$ResponseDataImplCopyWithImpl<_$ResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ResponseData implements ResponseData {
  const factory _ResponseData({final String message}) = _$ResponseDataImpl;

  factory _ResponseData.fromJson(Map<String, dynamic> json) =
      _$ResponseDataImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDataImplCopyWith<_$ResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
