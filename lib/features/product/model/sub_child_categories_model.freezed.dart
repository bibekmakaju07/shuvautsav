// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_child_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubChildCategoriesResponse _$SubChildCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _SubChildCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$SubChildCategoriesResponse {
  CategoriesModel get data => throw _privateConstructorUsedError;

  /// Serializes this SubChildCategoriesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubChildCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubChildCategoriesResponseCopyWith<SubChildCategoriesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubChildCategoriesResponseCopyWith<$Res> {
  factory $SubChildCategoriesResponseCopyWith(SubChildCategoriesResponse value,
          $Res Function(SubChildCategoriesResponse) then) =
      _$SubChildCategoriesResponseCopyWithImpl<$Res,
          SubChildCategoriesResponse>;
  @useResult
  $Res call({CategoriesModel data});

  $CategoriesModelCopyWith<$Res> get data;
}

/// @nodoc
class _$SubChildCategoriesResponseCopyWithImpl<$Res,
        $Val extends SubChildCategoriesResponse>
    implements $SubChildCategoriesResponseCopyWith<$Res> {
  _$SubChildCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubChildCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoriesModel,
    ) as $Val);
  }

  /// Create a copy of SubChildCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesModelCopyWith<$Res> get data {
    return $CategoriesModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubChildCategoriesResponseImplCopyWith<$Res>
    implements $SubChildCategoriesResponseCopyWith<$Res> {
  factory _$$SubChildCategoriesResponseImplCopyWith(
          _$SubChildCategoriesResponseImpl value,
          $Res Function(_$SubChildCategoriesResponseImpl) then) =
      __$$SubChildCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoriesModel data});

  @override
  $CategoriesModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$SubChildCategoriesResponseImplCopyWithImpl<$Res>
    extends _$SubChildCategoriesResponseCopyWithImpl<$Res,
        _$SubChildCategoriesResponseImpl>
    implements _$$SubChildCategoriesResponseImplCopyWith<$Res> {
  __$$SubChildCategoriesResponseImplCopyWithImpl(
      _$SubChildCategoriesResponseImpl _value,
      $Res Function(_$SubChildCategoriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubChildCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SubChildCategoriesResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoriesModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubChildCategoriesResponseImpl implements _SubChildCategoriesResponse {
  const _$SubChildCategoriesResponseImpl({this.data = const CategoriesModel()});

  factory _$SubChildCategoriesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubChildCategoriesResponseImplFromJson(json);

  @override
  @JsonKey()
  final CategoriesModel data;

  @override
  String toString() {
    return 'SubChildCategoriesResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubChildCategoriesResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SubChildCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubChildCategoriesResponseImplCopyWith<_$SubChildCategoriesResponseImpl>
      get copyWith => __$$SubChildCategoriesResponseImplCopyWithImpl<
          _$SubChildCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubChildCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _SubChildCategoriesResponse
    implements SubChildCategoriesResponse {
  const factory _SubChildCategoriesResponse({final CategoriesModel data}) =
      _$SubChildCategoriesResponseImpl;

  factory _SubChildCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$SubChildCategoriesResponseImpl.fromJson;

  @override
  CategoriesModel get data;

  /// Create a copy of SubChildCategoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubChildCategoriesResponseImplCopyWith<_$SubChildCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesModel {
  List<ProductCategory> get sub_categories =>
      throw _privateConstructorUsedError;
  List<ProductCategory> get child_categories =>
      throw _privateConstructorUsedError;

  /// Serializes this CategoriesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res, CategoriesModel>;
  @useResult
  $Res call(
      {List<ProductCategory> sub_categories,
      List<ProductCategory> child_categories});
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res, $Val extends CategoriesModel>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub_categories = null,
    Object? child_categories = null,
  }) {
    return _then(_value.copyWith(
      sub_categories: null == sub_categories
          ? _value.sub_categories
          : sub_categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
      child_categories: null == child_categories
          ? _value.child_categories
          : child_categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesModelImplCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$CategoriesModelImplCopyWith(_$CategoriesModelImpl value,
          $Res Function(_$CategoriesModelImpl) then) =
      __$$CategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductCategory> sub_categories,
      List<ProductCategory> child_categories});
}

/// @nodoc
class __$$CategoriesModelImplCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res, _$CategoriesModelImpl>
    implements _$$CategoriesModelImplCopyWith<$Res> {
  __$$CategoriesModelImplCopyWithImpl(
      _$CategoriesModelImpl _value, $Res Function(_$CategoriesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub_categories = null,
    Object? child_categories = null,
  }) {
    return _then(_$CategoriesModelImpl(
      sub_categories: null == sub_categories
          ? _value._sub_categories
          : sub_categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
      child_categories: null == child_categories
          ? _value._child_categories
          : child_categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesModelImpl implements _CategoriesModel {
  const _$CategoriesModelImpl(
      {final List<ProductCategory> sub_categories = const [],
      final List<ProductCategory> child_categories = const []})
      : _sub_categories = sub_categories,
        _child_categories = child_categories;

  factory _$CategoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesModelImplFromJson(json);

  final List<ProductCategory> _sub_categories;
  @override
  @JsonKey()
  List<ProductCategory> get sub_categories {
    if (_sub_categories is EqualUnmodifiableListView) return _sub_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sub_categories);
  }

  final List<ProductCategory> _child_categories;
  @override
  @JsonKey()
  List<ProductCategory> get child_categories {
    if (_child_categories is EqualUnmodifiableListView)
      return _child_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_child_categories);
  }

  @override
  String toString() {
    return 'CategoriesModel(sub_categories: $sub_categories, child_categories: $child_categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesModelImpl &&
            const DeepCollectionEquality()
                .equals(other._sub_categories, _sub_categories) &&
            const DeepCollectionEquality()
                .equals(other._child_categories, _child_categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sub_categories),
      const DeepCollectionEquality().hash(_child_categories));

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      __$$CategoriesModelImplCopyWithImpl<_$CategoriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesModelImplToJson(
      this,
    );
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel(
      {final List<ProductCategory> sub_categories,
      final List<ProductCategory> child_categories}) = _$CategoriesModelImpl;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$CategoriesModelImpl.fromJson;

  @override
  List<ProductCategory> get sub_categories;
  @override
  List<ProductCategory> get child_categories;

  /// Create a copy of CategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
