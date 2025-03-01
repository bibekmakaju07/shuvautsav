// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionDataModel _$TransactionDataModelFromJson(Map<String, dynamic> json) {
  return _TransactionDataModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionDataModel {
  Data get data => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this TransactionDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDataModelCopyWith<TransactionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataModelCopyWith<$Res> {
  factory $TransactionDataModelCopyWith(TransactionDataModel value,
          $Res Function(TransactionDataModel) then) =
      _$TransactionDataModelCopyWithImpl<$Res, TransactionDataModel>;
  @useResult
  $Res call({Data data, String token});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$TransactionDataModelCopyWithImpl<$Res,
        $Val extends TransactionDataModel>
    implements $TransactionDataModelCopyWith<$Res> {
  _$TransactionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TransactionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDataModelImplCopyWith<$Res>
    implements $TransactionDataModelCopyWith<$Res> {
  factory _$$TransactionDataModelImplCopyWith(_$TransactionDataModelImpl value,
          $Res Function(_$TransactionDataModelImpl) then) =
      __$$TransactionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Data data, String token});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TransactionDataModelImplCopyWithImpl<$Res>
    extends _$TransactionDataModelCopyWithImpl<$Res, _$TransactionDataModelImpl>
    implements _$$TransactionDataModelImplCopyWith<$Res> {
  __$$TransactionDataModelImplCopyWithImpl(_$TransactionDataModelImpl _value,
      $Res Function(_$TransactionDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? token = null,
  }) {
    return _then(_$TransactionDataModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDataModelImpl implements _TransactionDataModel {
  const _$TransactionDataModelImpl({this.data = const Data(), this.token = ''});

  factory _$TransactionDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataModelImplFromJson(json);

  @override
  @JsonKey()
  final Data data;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'TransactionDataModel(data: $data, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, token);

  /// Create a copy of TransactionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataModelImplCopyWith<_$TransactionDataModelImpl>
      get copyWith =>
          __$$TransactionDataModelImplCopyWithImpl<_$TransactionDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionDataModel implements TransactionDataModel {
  const factory _TransactionDataModel({final Data data, final String token}) =
      _$TransactionDataModelImpl;

  factory _TransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$TransactionDataModelImpl.fromJson;

  @override
  Data get data;
  @override
  String get token;

  /// Create a copy of TransactionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDataModelImplCopyWith<_$TransactionDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int get MERCHANTID => throw _privateConstructorUsedError;
  String get APPID => throw _privateConstructorUsedError;
  String get APPNAME => throw _privateConstructorUsedError;
  int get TXNID => throw _privateConstructorUsedError;
  String get TXNDATE => throw _privateConstructorUsedError;
  String get TXNCRNCY => throw _privateConstructorUsedError;
  int get TXNAMT => throw _privateConstructorUsedError;
  int get REFERENCEID => throw _privateConstructorUsedError;
  String get REMARKS => throw _privateConstructorUsedError;
  String get PARTICULARS => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int MERCHANTID,
      String APPID,
      String APPNAME,
      int TXNID,
      String TXNDATE,
      String TXNCRNCY,
      int TXNAMT,
      int REFERENCEID,
      String REMARKS,
      String PARTICULARS});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? MERCHANTID = null,
    Object? APPID = null,
    Object? APPNAME = null,
    Object? TXNID = null,
    Object? TXNDATE = null,
    Object? TXNCRNCY = null,
    Object? TXNAMT = null,
    Object? REFERENCEID = null,
    Object? REMARKS = null,
    Object? PARTICULARS = null,
  }) {
    return _then(_value.copyWith(
      MERCHANTID: null == MERCHANTID
          ? _value.MERCHANTID
          : MERCHANTID // ignore: cast_nullable_to_non_nullable
              as int,
      APPID: null == APPID
          ? _value.APPID
          : APPID // ignore: cast_nullable_to_non_nullable
              as String,
      APPNAME: null == APPNAME
          ? _value.APPNAME
          : APPNAME // ignore: cast_nullable_to_non_nullable
              as String,
      TXNID: null == TXNID
          ? _value.TXNID
          : TXNID // ignore: cast_nullable_to_non_nullable
              as int,
      TXNDATE: null == TXNDATE
          ? _value.TXNDATE
          : TXNDATE // ignore: cast_nullable_to_non_nullable
              as String,
      TXNCRNCY: null == TXNCRNCY
          ? _value.TXNCRNCY
          : TXNCRNCY // ignore: cast_nullable_to_non_nullable
              as String,
      TXNAMT: null == TXNAMT
          ? _value.TXNAMT
          : TXNAMT // ignore: cast_nullable_to_non_nullable
              as int,
      REFERENCEID: null == REFERENCEID
          ? _value.REFERENCEID
          : REFERENCEID // ignore: cast_nullable_to_non_nullable
              as int,
      REMARKS: null == REMARKS
          ? _value.REMARKS
          : REMARKS // ignore: cast_nullable_to_non_nullable
              as String,
      PARTICULARS: null == PARTICULARS
          ? _value.PARTICULARS
          : PARTICULARS // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int MERCHANTID,
      String APPID,
      String APPNAME,
      int TXNID,
      String TXNDATE,
      String TXNCRNCY,
      int TXNAMT,
      int REFERENCEID,
      String REMARKS,
      String PARTICULARS});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? MERCHANTID = null,
    Object? APPID = null,
    Object? APPNAME = null,
    Object? TXNID = null,
    Object? TXNDATE = null,
    Object? TXNCRNCY = null,
    Object? TXNAMT = null,
    Object? REFERENCEID = null,
    Object? REMARKS = null,
    Object? PARTICULARS = null,
  }) {
    return _then(_$DataImpl(
      MERCHANTID: null == MERCHANTID
          ? _value.MERCHANTID
          : MERCHANTID // ignore: cast_nullable_to_non_nullable
              as int,
      APPID: null == APPID
          ? _value.APPID
          : APPID // ignore: cast_nullable_to_non_nullable
              as String,
      APPNAME: null == APPNAME
          ? _value.APPNAME
          : APPNAME // ignore: cast_nullable_to_non_nullable
              as String,
      TXNID: null == TXNID
          ? _value.TXNID
          : TXNID // ignore: cast_nullable_to_non_nullable
              as int,
      TXNDATE: null == TXNDATE
          ? _value.TXNDATE
          : TXNDATE // ignore: cast_nullable_to_non_nullable
              as String,
      TXNCRNCY: null == TXNCRNCY
          ? _value.TXNCRNCY
          : TXNCRNCY // ignore: cast_nullable_to_non_nullable
              as String,
      TXNAMT: null == TXNAMT
          ? _value.TXNAMT
          : TXNAMT // ignore: cast_nullable_to_non_nullable
              as int,
      REFERENCEID: null == REFERENCEID
          ? _value.REFERENCEID
          : REFERENCEID // ignore: cast_nullable_to_non_nullable
              as int,
      REMARKS: null == REMARKS
          ? _value.REMARKS
          : REMARKS // ignore: cast_nullable_to_non_nullable
              as String,
      PARTICULARS: null == PARTICULARS
          ? _value.PARTICULARS
          : PARTICULARS // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.MERCHANTID = -1,
      this.APPID = '',
      this.APPNAME = '',
      this.TXNID = -1,
      this.TXNDATE = '',
      this.TXNCRNCY = '',
      this.TXNAMT = 0,
      this.REFERENCEID = 0,
      this.REMARKS = '',
      this.PARTICULARS = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey()
  final int MERCHANTID;
  @override
  @JsonKey()
  final String APPID;
  @override
  @JsonKey()
  final String APPNAME;
  @override
  @JsonKey()
  final int TXNID;
  @override
  @JsonKey()
  final String TXNDATE;
  @override
  @JsonKey()
  final String TXNCRNCY;
  @override
  @JsonKey()
  final int TXNAMT;
  @override
  @JsonKey()
  final int REFERENCEID;
  @override
  @JsonKey()
  final String REMARKS;
  @override
  @JsonKey()
  final String PARTICULARS;

  @override
  String toString() {
    return 'Data(MERCHANTID: $MERCHANTID, APPID: $APPID, APPNAME: $APPNAME, TXNID: $TXNID, TXNDATE: $TXNDATE, TXNCRNCY: $TXNCRNCY, TXNAMT: $TXNAMT, REFERENCEID: $REFERENCEID, REMARKS: $REMARKS, PARTICULARS: $PARTICULARS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.MERCHANTID, MERCHANTID) ||
                other.MERCHANTID == MERCHANTID) &&
            (identical(other.APPID, APPID) || other.APPID == APPID) &&
            (identical(other.APPNAME, APPNAME) || other.APPNAME == APPNAME) &&
            (identical(other.TXNID, TXNID) || other.TXNID == TXNID) &&
            (identical(other.TXNDATE, TXNDATE) || other.TXNDATE == TXNDATE) &&
            (identical(other.TXNCRNCY, TXNCRNCY) ||
                other.TXNCRNCY == TXNCRNCY) &&
            (identical(other.TXNAMT, TXNAMT) || other.TXNAMT == TXNAMT) &&
            (identical(other.REFERENCEID, REFERENCEID) ||
                other.REFERENCEID == REFERENCEID) &&
            (identical(other.REMARKS, REMARKS) || other.REMARKS == REMARKS) &&
            (identical(other.PARTICULARS, PARTICULARS) ||
                other.PARTICULARS == PARTICULARS));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, MERCHANTID, APPID, APPNAME,
      TXNID, TXNDATE, TXNCRNCY, TXNAMT, REFERENCEID, REMARKS, PARTICULARS);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final int MERCHANTID,
      final String APPID,
      final String APPNAME,
      final int TXNID,
      final String TXNDATE,
      final String TXNCRNCY,
      final int TXNAMT,
      final int REFERENCEID,
      final String REMARKS,
      final String PARTICULARS}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  int get MERCHANTID;
  @override
  String get APPID;
  @override
  String get APPNAME;
  @override
  int get TXNID;
  @override
  String get TXNDATE;
  @override
  String get TXNCRNCY;
  @override
  int get TXNAMT;
  @override
  int get REFERENCEID;
  @override
  String get REMARKS;
  @override
  String get PARTICULARS;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
