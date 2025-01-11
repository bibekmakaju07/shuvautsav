// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsResponseModel _$OrderDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OrderDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsResponseModel {
  int get status => throw _privateConstructorUsedError;
  DataModel get data => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsResponseModelCopyWith<OrderDetailsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsResponseModelCopyWith<$Res> {
  factory $OrderDetailsResponseModelCopyWith(OrderDetailsResponseModel value,
          $Res Function(OrderDetailsResponseModel) then) =
      _$OrderDetailsResponseModelCopyWithImpl<$Res, OrderDetailsResponseModel>;
  @useResult
  $Res call({int status, DataModel data});

  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$OrderDetailsResponseModelCopyWithImpl<$Res,
        $Val extends OrderDetailsResponseModel>
    implements $OrderDetailsResponseModelCopyWith<$Res> {
  _$OrderDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsResponseModel
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
              as DataModel,
    ) as $Val);
  }

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res> get data {
    return $DataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDetailsResponseModelImplCopyWith<$Res>
    implements $OrderDetailsResponseModelCopyWith<$Res> {
  factory _$$OrderDetailsResponseModelImplCopyWith(
          _$OrderDetailsResponseModelImpl value,
          $Res Function(_$OrderDetailsResponseModelImpl) then) =
      __$$OrderDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, DataModel data});

  @override
  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$OrderDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsResponseModelCopyWithImpl<$Res,
        _$OrderDetailsResponseModelImpl>
    implements _$$OrderDetailsResponseModelImplCopyWith<$Res> {
  __$$OrderDetailsResponseModelImplCopyWithImpl(
      _$OrderDetailsResponseModelImpl _value,
      $Res Function(_$OrderDetailsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$OrderDetailsResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsResponseModelImpl implements _OrderDetailsResponseModel {
  _$OrderDetailsResponseModelImpl(
      {this.status = -1, this.data = const DataModel()});

  factory _$OrderDetailsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final DataModel data;

  @override
  String toString() {
    return 'OrderDetailsResponseModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsResponseModelImplCopyWith<_$OrderDetailsResponseModelImpl>
      get copyWith => __$$OrderDetailsResponseModelImplCopyWithImpl<
          _$OrderDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsResponseModel implements OrderDetailsResponseModel {
  factory _OrderDetailsResponseModel({final int status, final DataModel data}) =
      _$OrderDetailsResponseModelImpl;

  factory _OrderDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsResponseModelImpl.fromJson;

  @override
  int get status;
  @override
  DataModel get data;

  /// Create a copy of OrderDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsResponseModelImplCopyWith<_$OrderDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: 'order_lists')
  List<OrderListModel> get orderLists => throw _privateConstructorUsedError;
  OrderDetailsModel? get order => throw _privateConstructorUsedError;

  /// Serializes this DataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_lists') List<OrderListModel> orderLists,
      OrderDetailsModel? order});

  $OrderDetailsModelCopyWith<$Res>? get order;
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderLists = null,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      orderLists: null == orderLists
          ? _value.orderLists
          : orderLists // ignore: cast_nullable_to_non_nullable
              as List<OrderListModel>,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel?,
    ) as $Val);
  }

  /// Create a copy of DataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsModelCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderDetailsModelCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_lists') List<OrderListModel> orderLists,
      OrderDetailsModel? order});

  @override
  $OrderDetailsModelCopyWith<$Res>? get order;
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderLists = null,
    Object? order = freezed,
  }) {
    return _then(_$DataModelImpl(
      orderLists: null == orderLists
          ? _value._orderLists
          : orderLists // ignore: cast_nullable_to_non_nullable
              as List<OrderListModel>,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: 'order_lists')
      final List<OrderListModel> orderLists = const [],
      this.order})
      : _orderLists = orderLists;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  final List<OrderListModel> _orderLists;
  @override
  @JsonKey(name: 'order_lists')
  List<OrderListModel> get orderLists {
    if (_orderLists is EqualUnmodifiableListView) return _orderLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderLists);
  }

  @override
  final OrderDetailsModel? order;

  @override
  String toString() {
    return 'DataModel(orderLists: $orderLists, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._orderLists, _orderLists) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderLists), order);

  /// Create a copy of DataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
      {@JsonKey(name: 'order_lists') final List<OrderListModel> orderLists,
      final OrderDetailsModel? order}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: 'order_lists')
  List<OrderListModel> get orderLists;
  @override
  OrderDetailsModel? get order;

  /// Create a copy of DataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderListModel _$OrderListModelFromJson(Map<String, dynamic> json) {
  return _OrderListModel.fromJson(json);
}

/// @nodoc
mixin _$OrderListModel {
  int get quantity => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;

  /// Serializes this OrderListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderListModelCopyWith<OrderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListModelCopyWith<$Res> {
  factory $OrderListModelCopyWith(
          OrderListModel value, $Res Function(OrderListModel) then) =
      _$OrderListModelCopyWithImpl<$Res, OrderListModel>;
  @useResult
  $Res call({int quantity, String title, int rate, String total});
}

/// @nodoc
class _$OrderListModelCopyWithImpl<$Res, $Val extends OrderListModel>
    implements $OrderListModelCopyWith<$Res> {
  _$OrderListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? title = null,
    Object? rate = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderListModelImplCopyWith<$Res>
    implements $OrderListModelCopyWith<$Res> {
  factory _$$OrderListModelImplCopyWith(_$OrderListModelImpl value,
          $Res Function(_$OrderListModelImpl) then) =
      __$$OrderListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity, String title, int rate, String total});
}

/// @nodoc
class __$$OrderListModelImplCopyWithImpl<$Res>
    extends _$OrderListModelCopyWithImpl<$Res, _$OrderListModelImpl>
    implements _$$OrderListModelImplCopyWith<$Res> {
  __$$OrderListModelImplCopyWithImpl(
      _$OrderListModelImpl _value, $Res Function(_$OrderListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? title = null,
    Object? rate = null,
    Object? total = null,
  }) {
    return _then(_$OrderListModelImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderListModelImpl implements _OrderListModel {
  _$OrderListModelImpl(
      {this.quantity = -1, this.title = '', this.rate = -1, this.total = ''});

  factory _$OrderListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderListModelImplFromJson(json);

  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int rate;
  @override
  @JsonKey()
  final String total;

  @override
  String toString() {
    return 'OrderListModel(quantity: $quantity, title: $title, rate: $rate, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListModelImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, title, rate, total);

  /// Create a copy of OrderListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListModelImplCopyWith<_$OrderListModelImpl> get copyWith =>
      __$$OrderListModelImplCopyWithImpl<_$OrderListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderListModelImplToJson(
      this,
    );
  }
}

abstract class _OrderListModel implements OrderListModel {
  factory _OrderListModel(
      {final int quantity,
      final String title,
      final int rate,
      final String total}) = _$OrderListModelImpl;

  factory _OrderListModel.fromJson(Map<String, dynamic> json) =
      _$OrderListModelImpl.fromJson;

  @override
  int get quantity;
  @override
  String get title;
  @override
  int get rate;
  @override
  String get total;

  /// Create a copy of OrderListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderListModelImplCopyWith<_$OrderListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_total')
  String get shippingTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total')
  String get grandTotal => throw _privateConstructorUsedError;

  /// Serializes this OrderDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'shipping_total') String shippingTotal,
      @JsonKey(name: 'grand_total') String grandTotal});
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shippingTotal = null,
    Object? grandTotal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shippingTotal: null == shippingTotal
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as String,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(_$OrderDetailsModelImpl value,
          $Res Function(_$OrderDetailsModelImpl) then) =
      __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'shipping_total') String shippingTotal,
      @JsonKey(name: 'grand_total') String grandTotal});
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(_$OrderDetailsModelImpl _value,
      $Res Function(_$OrderDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? shippingTotal = null,
    Object? grandTotal = null,
  }) {
    return _then(_$OrderDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shippingTotal: null == shippingTotal
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as String,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl implements _OrderDetailsModel {
  _$OrderDetailsModelImpl(
      {this.id = -1,
      @JsonKey(name: 'shipping_total') this.shippingTotal = '',
      @JsonKey(name: 'grand_total') this.grandTotal = ''});

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'shipping_total')
  final String shippingTotal;
  @override
  @JsonKey(name: 'grand_total')
  final String grandTotal;

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, shippingTotal: $shippingTotal, grandTotal: $grandTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shippingTotal, shippingTotal) ||
                other.shippingTotal == shippingTotal) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, shippingTotal, grandTotal);

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel implements OrderDetailsModel {
  factory _OrderDetailsModel(
          {final int id,
          @JsonKey(name: 'shipping_total') final String shippingTotal,
          @JsonKey(name: 'grand_total') final String grandTotal}) =
      _$OrderDetailsModelImpl;

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'shipping_total')
  String get shippingTotal;
  @override
  @JsonKey(name: 'grand_total')
  String get grandTotal;

  /// Create a copy of OrderDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
