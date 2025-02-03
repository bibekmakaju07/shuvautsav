// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DasboardOrdersDataModel _$DasboardOrdersDataModelFromJson(
    Map<String, dynamic> json) {
  return _DasboardOrdersDataModel.fromJson(json);
}

/// @nodoc
mixin _$DasboardOrdersDataModel {
  int get status => throw _privateConstructorUsedError;
  DashboardOrdersData get data => throw _privateConstructorUsedError;

  /// Serializes this DasboardOrdersDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DasboardOrdersDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DasboardOrdersDataModelCopyWith<DasboardOrdersDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DasboardOrdersDataModelCopyWith<$Res> {
  factory $DasboardOrdersDataModelCopyWith(DasboardOrdersDataModel value,
          $Res Function(DasboardOrdersDataModel) then) =
      _$DasboardOrdersDataModelCopyWithImpl<$Res, DasboardOrdersDataModel>;
  @useResult
  $Res call({int status, DashboardOrdersData data});

  $DashboardOrdersDataCopyWith<$Res> get data;
}

/// @nodoc
class _$DasboardOrdersDataModelCopyWithImpl<$Res,
        $Val extends DasboardOrdersDataModel>
    implements $DasboardOrdersDataModelCopyWith<$Res> {
  _$DasboardOrdersDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DasboardOrdersDataModel
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
              as DashboardOrdersData,
    ) as $Val);
  }

  /// Create a copy of DasboardOrdersDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardOrdersDataCopyWith<$Res> get data {
    return $DashboardOrdersDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DasboardOrdersDataModelImplCopyWith<$Res>
    implements $DasboardOrdersDataModelCopyWith<$Res> {
  factory _$$DasboardOrdersDataModelImplCopyWith(
          _$DasboardOrdersDataModelImpl value,
          $Res Function(_$DasboardOrdersDataModelImpl) then) =
      __$$DasboardOrdersDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, DashboardOrdersData data});

  @override
  $DashboardOrdersDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$DasboardOrdersDataModelImplCopyWithImpl<$Res>
    extends _$DasboardOrdersDataModelCopyWithImpl<$Res,
        _$DasboardOrdersDataModelImpl>
    implements _$$DasboardOrdersDataModelImplCopyWith<$Res> {
  __$$DasboardOrdersDataModelImplCopyWithImpl(
      _$DasboardOrdersDataModelImpl _value,
      $Res Function(_$DasboardOrdersDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DasboardOrdersDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$DasboardOrdersDataModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardOrdersData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DasboardOrdersDataModelImpl implements _DasboardOrdersDataModel {
  const _$DasboardOrdersDataModelImpl(
      {this.status = -1, this.data = const DashboardOrdersData()});

  factory _$DasboardOrdersDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DasboardOrdersDataModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final DashboardOrdersData data;

  @override
  String toString() {
    return 'DasboardOrdersDataModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DasboardOrdersDataModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of DasboardOrdersDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DasboardOrdersDataModelImplCopyWith<_$DasboardOrdersDataModelImpl>
      get copyWith => __$$DasboardOrdersDataModelImplCopyWithImpl<
          _$DasboardOrdersDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DasboardOrdersDataModelImplToJson(
      this,
    );
  }
}

abstract class _DasboardOrdersDataModel implements DasboardOrdersDataModel {
  const factory _DasboardOrdersDataModel(
      {final int status,
      final DashboardOrdersData data}) = _$DasboardOrdersDataModelImpl;

  factory _DasboardOrdersDataModel.fromJson(Map<String, dynamic> json) =
      _$DasboardOrdersDataModelImpl.fromJson;

  @override
  int get status;
  @override
  DashboardOrdersData get data;

  /// Create a copy of DasboardOrdersDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DasboardOrdersDataModelImplCopyWith<_$DasboardOrdersDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DashboardOrdersData _$DashboardOrdersDataFromJson(Map<String, dynamic> json) {
  return _DashboardOrdersData.fromJson(json);
}

/// @nodoc
mixin _$DashboardOrdersData {
  int get orders => throw _privateConstructorUsedError;
  int get returns => throw _privateConstructorUsedError;
  int get wishlists => throw _privateConstructorUsedError;

  /// Serializes this DashboardOrdersData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardOrdersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardOrdersDataCopyWith<DashboardOrdersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardOrdersDataCopyWith<$Res> {
  factory $DashboardOrdersDataCopyWith(
          DashboardOrdersData value, $Res Function(DashboardOrdersData) then) =
      _$DashboardOrdersDataCopyWithImpl<$Res, DashboardOrdersData>;
  @useResult
  $Res call({int orders, int returns, int wishlists});
}

/// @nodoc
class _$DashboardOrdersDataCopyWithImpl<$Res, $Val extends DashboardOrdersData>
    implements $DashboardOrdersDataCopyWith<$Res> {
  _$DashboardOrdersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardOrdersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? returns = null,
    Object? wishlists = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as int,
      returns: null == returns
          ? _value.returns
          : returns // ignore: cast_nullable_to_non_nullable
              as int,
      wishlists: null == wishlists
          ? _value.wishlists
          : wishlists // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardOrdersDataImplCopyWith<$Res>
    implements $DashboardOrdersDataCopyWith<$Res> {
  factory _$$DashboardOrdersDataImplCopyWith(_$DashboardOrdersDataImpl value,
          $Res Function(_$DashboardOrdersDataImpl) then) =
      __$$DashboardOrdersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int orders, int returns, int wishlists});
}

/// @nodoc
class __$$DashboardOrdersDataImplCopyWithImpl<$Res>
    extends _$DashboardOrdersDataCopyWithImpl<$Res, _$DashboardOrdersDataImpl>
    implements _$$DashboardOrdersDataImplCopyWith<$Res> {
  __$$DashboardOrdersDataImplCopyWithImpl(_$DashboardOrdersDataImpl _value,
      $Res Function(_$DashboardOrdersDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardOrdersData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? returns = null,
    Object? wishlists = null,
  }) {
    return _then(_$DashboardOrdersDataImpl(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as int,
      returns: null == returns
          ? _value.returns
          : returns // ignore: cast_nullable_to_non_nullable
              as int,
      wishlists: null == wishlists
          ? _value.wishlists
          : wishlists // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardOrdersDataImpl implements _DashboardOrdersData {
  const _$DashboardOrdersDataImpl(
      {this.orders = 0, this.returns = 0, this.wishlists = 0});

  factory _$DashboardOrdersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardOrdersDataImplFromJson(json);

  @override
  @JsonKey()
  final int orders;
  @override
  @JsonKey()
  final int returns;
  @override
  @JsonKey()
  final int wishlists;

  @override
  String toString() {
    return 'DashboardOrdersData(orders: $orders, returns: $returns, wishlists: $wishlists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardOrdersDataImpl &&
            (identical(other.orders, orders) || other.orders == orders) &&
            (identical(other.returns, returns) || other.returns == returns) &&
            (identical(other.wishlists, wishlists) ||
                other.wishlists == wishlists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orders, returns, wishlists);

  /// Create a copy of DashboardOrdersData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardOrdersDataImplCopyWith<_$DashboardOrdersDataImpl> get copyWith =>
      __$$DashboardOrdersDataImplCopyWithImpl<_$DashboardOrdersDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardOrdersDataImplToJson(
      this,
    );
  }
}

abstract class _DashboardOrdersData implements DashboardOrdersData {
  const factory _DashboardOrdersData(
      {final int orders,
      final int returns,
      final int wishlists}) = _$DashboardOrdersDataImpl;

  factory _DashboardOrdersData.fromJson(Map<String, dynamic> json) =
      _$DashboardOrdersDataImpl.fromJson;

  @override
  int get orders;
  @override
  int get returns;
  @override
  int get wishlists;

  /// Create a copy of DashboardOrdersData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardOrdersDataImplCopyWith<_$DashboardOrdersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
