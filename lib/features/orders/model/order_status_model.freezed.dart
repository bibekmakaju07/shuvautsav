// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderStatusColor _$OrderStatusColorFromJson(Map<String, dynamic> json) {
  return _OrderStatusColor.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusColor {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;

  /// Serializes this OrderStatusColor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStatusColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStatusColorCopyWith<OrderStatusColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusColorCopyWith<$Res> {
  factory $OrderStatusColorCopyWith(
          OrderStatusColor value, $Res Function(OrderStatusColor) then) =
      _$OrderStatusColorCopyWithImpl<$Res, OrderStatusColor>;
  @useResult
  $Res call({int id, String status, @ColorConverter() Color color});
}

/// @nodoc
class _$OrderStatusColorCopyWithImpl<$Res, $Val extends OrderStatusColor>
    implements $OrderStatusColorCopyWith<$Res> {
  _$OrderStatusColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStatusColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStatusColorImplCopyWith<$Res>
    implements $OrderStatusColorCopyWith<$Res> {
  factory _$$OrderStatusColorImplCopyWith(_$OrderStatusColorImpl value,
          $Res Function(_$OrderStatusColorImpl) then) =
      __$$OrderStatusColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String status, @ColorConverter() Color color});
}

/// @nodoc
class __$$OrderStatusColorImplCopyWithImpl<$Res>
    extends _$OrderStatusColorCopyWithImpl<$Res, _$OrderStatusColorImpl>
    implements _$$OrderStatusColorImplCopyWith<$Res> {
  __$$OrderStatusColorImplCopyWithImpl(_$OrderStatusColorImpl _value,
      $Res Function(_$OrderStatusColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderStatusColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? color = null,
  }) {
    return _then(_$OrderStatusColorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatusColorImpl implements _OrderStatusColor {
  const _$OrderStatusColorImpl(
      {this.id = -1, this.status = '', @ColorConverter() required this.color});

  factory _$OrderStatusColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusColorImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String status;
  @override
  @ColorConverter()
  final Color color;

  @override
  String toString() {
    return 'OrderStatusColor(id: $id, status: $status, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusColorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, color);

  /// Create a copy of OrderStatusColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusColorImplCopyWith<_$OrderStatusColorImpl> get copyWith =>
      __$$OrderStatusColorImplCopyWithImpl<_$OrderStatusColorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusColorImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusColor implements OrderStatusColor {
  const factory _OrderStatusColor(
      {final int id,
      final String status,
      @ColorConverter() required final Color color}) = _$OrderStatusColorImpl;

  factory _OrderStatusColor.fromJson(Map<String, dynamic> json) =
      _$OrderStatusColorImpl.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  @ColorConverter()
  Color get color;

  /// Create a copy of OrderStatusColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatusColorImplCopyWith<_$OrderStatusColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
