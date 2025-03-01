// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardProductResponse _$DashboardProductResponseFromJson(
    Map<String, dynamic> json) {
  return _DashboardProductResponse.fromJson(json);
}

/// @nodoc
mixin _$DashboardProductResponse {
  DashboardProductDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this DashboardProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardProductResponseCopyWith<DashboardProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardProductResponseCopyWith<$Res> {
  factory $DashboardProductResponseCopyWith(DashboardProductResponse value,
          $Res Function(DashboardProductResponse) then) =
      _$DashboardProductResponseCopyWithImpl<$Res, DashboardProductResponse>;
  @useResult
  $Res call({DashboardProductDataModel data});

  $DashboardProductDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$DashboardProductResponseCopyWithImpl<$Res,
        $Val extends DashboardProductResponse>
    implements $DashboardProductResponseCopyWith<$Res> {
  _$DashboardProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardProductResponse
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
              as DashboardProductDataModel,
    ) as $Val);
  }

  /// Create a copy of DashboardProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardProductDataModelCopyWith<$Res> get data {
    return $DashboardProductDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardProductResponseImplCopyWith<$Res>
    implements $DashboardProductResponseCopyWith<$Res> {
  factory _$$DashboardProductResponseImplCopyWith(
          _$DashboardProductResponseImpl value,
          $Res Function(_$DashboardProductResponseImpl) then) =
      __$$DashboardProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DashboardProductDataModel data});

  @override
  $DashboardProductDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$DashboardProductResponseImplCopyWithImpl<$Res>
    extends _$DashboardProductResponseCopyWithImpl<$Res,
        _$DashboardProductResponseImpl>
    implements _$$DashboardProductResponseImplCopyWith<$Res> {
  __$$DashboardProductResponseImplCopyWithImpl(
      _$DashboardProductResponseImpl _value,
      $Res Function(_$DashboardProductResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DashboardProductResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DashboardProductDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardProductResponseImpl implements _DashboardProductResponse {
  const _$DashboardProductResponseImpl(
      {this.data = const DashboardProductDataModel()});

  factory _$DashboardProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardProductResponseImplFromJson(json);

  @override
  @JsonKey()
  final DashboardProductDataModel data;

  @override
  String toString() {
    return 'DashboardProductResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardProductResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of DashboardProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardProductResponseImplCopyWith<_$DashboardProductResponseImpl>
      get copyWith => __$$DashboardProductResponseImplCopyWithImpl<
          _$DashboardProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardProductResponseImplToJson(
      this,
    );
  }
}

abstract class _DashboardProductResponse implements DashboardProductResponse {
  const factory _DashboardProductResponse(
      {final DashboardProductDataModel data}) = _$DashboardProductResponseImpl;

  factory _DashboardProductResponse.fromJson(Map<String, dynamic> json) =
      _$DashboardProductResponseImpl.fromJson;

  @override
  DashboardProductDataModel get data;

  /// Create a copy of DashboardProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardProductResponseImplCopyWith<_$DashboardProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DashboardProductDataModel _$DashboardProductDataModelFromJson(
    Map<String, dynamic> json) {
  return _DashboardProductDataModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardProductDataModel {
  List<ProductCategory> get categories => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  ProductCategory get category1 => throw _privateConstructorUsedError;
  List<CategoryProduct> get products1 => throw _privateConstructorUsedError;
  ProductCategory get category2 => throw _privateConstructorUsedError;
  List<CategoryProduct> get products2 => throw _privateConstructorUsedError;

  /// Serializes this DashboardProductDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardProductDataModelCopyWith<DashboardProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardProductDataModelCopyWith<$Res> {
  factory $DashboardProductDataModelCopyWith(DashboardProductDataModel value,
          $Res Function(DashboardProductDataModel) then) =
      _$DashboardProductDataModelCopyWithImpl<$Res, DashboardProductDataModel>;
  @useResult
  $Res call(
      {List<ProductCategory> categories,
      List<ProductModel> products,
      ProductCategory category1,
      List<CategoryProduct> products1,
      ProductCategory category2,
      List<CategoryProduct> products2});

  $ProductCategoryCopyWith<$Res> get category1;
  $ProductCategoryCopyWith<$Res> get category2;
}

/// @nodoc
class _$DashboardProductDataModelCopyWithImpl<$Res,
        $Val extends DashboardProductDataModel>
    implements $DashboardProductDataModelCopyWith<$Res> {
  _$DashboardProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? products = null,
    Object? category1 = null,
    Object? products1 = null,
    Object? category2 = null,
    Object? products2 = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      category1: null == category1
          ? _value.category1
          : category1 // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
      products1: null == products1
          ? _value.products1
          : products1 // ignore: cast_nullable_to_non_nullable
              as List<CategoryProduct>,
      category2: null == category2
          ? _value.category2
          : category2 // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
      products2: null == products2
          ? _value.products2
          : products2 // ignore: cast_nullable_to_non_nullable
              as List<CategoryProduct>,
    ) as $Val);
  }

  /// Create a copy of DashboardProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res> get category1 {
    return $ProductCategoryCopyWith<$Res>(_value.category1, (value) {
      return _then(_value.copyWith(category1: value) as $Val);
    });
  }

  /// Create a copy of DashboardProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res> get category2 {
    return $ProductCategoryCopyWith<$Res>(_value.category2, (value) {
      return _then(_value.copyWith(category2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardProductDataModelImplCopyWith<$Res>
    implements $DashboardProductDataModelCopyWith<$Res> {
  factory _$$DashboardProductDataModelImplCopyWith(
          _$DashboardProductDataModelImpl value,
          $Res Function(_$DashboardProductDataModelImpl) then) =
      __$$DashboardProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductCategory> categories,
      List<ProductModel> products,
      ProductCategory category1,
      List<CategoryProduct> products1,
      ProductCategory category2,
      List<CategoryProduct> products2});

  @override
  $ProductCategoryCopyWith<$Res> get category1;
  @override
  $ProductCategoryCopyWith<$Res> get category2;
}

/// @nodoc
class __$$DashboardProductDataModelImplCopyWithImpl<$Res>
    extends _$DashboardProductDataModelCopyWithImpl<$Res,
        _$DashboardProductDataModelImpl>
    implements _$$DashboardProductDataModelImplCopyWith<$Res> {
  __$$DashboardProductDataModelImplCopyWithImpl(
      _$DashboardProductDataModelImpl _value,
      $Res Function(_$DashboardProductDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? products = null,
    Object? category1 = null,
    Object? products1 = null,
    Object? category2 = null,
    Object? products2 = null,
  }) {
    return _then(_$DashboardProductDataModelImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      category1: null == category1
          ? _value.category1
          : category1 // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
      products1: null == products1
          ? _value._products1
          : products1 // ignore: cast_nullable_to_non_nullable
              as List<CategoryProduct>,
      category2: null == category2
          ? _value.category2
          : category2 // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
      products2: null == products2
          ? _value._products2
          : products2 // ignore: cast_nullable_to_non_nullable
              as List<CategoryProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardProductDataModelImpl implements _DashboardProductDataModel {
  const _$DashboardProductDataModelImpl(
      {final List<ProductCategory> categories = const [],
      final List<ProductModel> products = const [],
      this.category1 = const ProductCategory(),
      final List<CategoryProduct> products1 = const [],
      this.category2 = const ProductCategory(),
      final List<CategoryProduct> products2 = const []})
      : _categories = categories,
        _products = products,
        _products1 = products1,
        _products2 = products2;

  factory _$DashboardProductDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardProductDataModelImplFromJson(json);

  final List<ProductCategory> _categories;
  @override
  @JsonKey()
  List<ProductCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final ProductCategory category1;
  final List<CategoryProduct> _products1;
  @override
  @JsonKey()
  List<CategoryProduct> get products1 {
    if (_products1 is EqualUnmodifiableListView) return _products1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products1);
  }

  @override
  @JsonKey()
  final ProductCategory category2;
  final List<CategoryProduct> _products2;
  @override
  @JsonKey()
  List<CategoryProduct> get products2 {
    if (_products2 is EqualUnmodifiableListView) return _products2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products2);
  }

  @override
  String toString() {
    return 'DashboardProductDataModel(categories: $categories, products: $products, category1: $category1, products1: $products1, category2: $category2, products2: $products2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardProductDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.category1, category1) ||
                other.category1 == category1) &&
            const DeepCollectionEquality()
                .equals(other._products1, _products1) &&
            (identical(other.category2, category2) ||
                other.category2 == category2) &&
            const DeepCollectionEquality()
                .equals(other._products2, _products2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_products),
      category1,
      const DeepCollectionEquality().hash(_products1),
      category2,
      const DeepCollectionEquality().hash(_products2));

  /// Create a copy of DashboardProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardProductDataModelImplCopyWith<_$DashboardProductDataModelImpl>
      get copyWith => __$$DashboardProductDataModelImplCopyWithImpl<
          _$DashboardProductDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardProductDataModelImplToJson(
      this,
    );
  }
}

abstract class _DashboardProductDataModel implements DashboardProductDataModel {
  const factory _DashboardProductDataModel(
      {final List<ProductCategory> categories,
      final List<ProductModel> products,
      final ProductCategory category1,
      final List<CategoryProduct> products1,
      final ProductCategory category2,
      final List<CategoryProduct> products2}) = _$DashboardProductDataModelImpl;

  factory _DashboardProductDataModel.fromJson(Map<String, dynamic> json) =
      _$DashboardProductDataModelImpl.fromJson;

  @override
  List<ProductCategory> get categories;
  @override
  List<ProductModel> get products;
  @override
  ProductCategory get category1;
  @override
  List<CategoryProduct> get products1;
  @override
  ProductCategory get category2;
  @override
  List<CategoryProduct> get products2;

  /// Create a copy of DashboardProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardProductDataModelImplCopyWith<_$DashboardProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
