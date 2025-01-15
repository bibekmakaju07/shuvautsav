// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryProductResponse _$CategoryProductResponseFromJson(
    Map<String, dynamic> json) {
  return _CategoryProductResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryProductResponse {
  ProductResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this CategoryProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryProductResponseCopyWith<CategoryProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductResponseCopyWith<$Res> {
  factory $CategoryProductResponseCopyWith(CategoryProductResponse value,
          $Res Function(CategoryProductResponse) then) =
      _$CategoryProductResponseCopyWithImpl<$Res, CategoryProductResponse>;
  @useResult
  $Res call({ProductResponseData data});

  $ProductResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CategoryProductResponseCopyWithImpl<$Res,
        $Val extends CategoryProductResponse>
    implements $CategoryProductResponseCopyWith<$Res> {
  _$CategoryProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryProductResponse
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
              as ProductResponseData,
    ) as $Val);
  }

  /// Create a copy of CategoryProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductResponseDataCopyWith<$Res> get data {
    return $ProductResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryProductResponseImplCopyWith<$Res>
    implements $CategoryProductResponseCopyWith<$Res> {
  factory _$$CategoryProductResponseImplCopyWith(
          _$CategoryProductResponseImpl value,
          $Res Function(_$CategoryProductResponseImpl) then) =
      __$$CategoryProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductResponseData data});

  @override
  $ProductResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CategoryProductResponseImplCopyWithImpl<$Res>
    extends _$CategoryProductResponseCopyWithImpl<$Res,
        _$CategoryProductResponseImpl>
    implements _$$CategoryProductResponseImplCopyWith<$Res> {
  __$$CategoryProductResponseImplCopyWithImpl(
      _$CategoryProductResponseImpl _value,
      $Res Function(_$CategoryProductResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CategoryProductResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryProductResponseImpl implements _CategoryProductResponse {
  const _$CategoryProductResponseImpl(
      {this.data = const ProductResponseData()});

  factory _$CategoryProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryProductResponseImplFromJson(json);

  @override
  @JsonKey()
  final ProductResponseData data;

  @override
  String toString() {
    return 'CategoryProductResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CategoryProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductResponseImplCopyWith<_$CategoryProductResponseImpl>
      get copyWith => __$$CategoryProductResponseImplCopyWithImpl<
          _$CategoryProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryProductResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryProductResponse implements CategoryProductResponse {
  const factory _CategoryProductResponse({final ProductResponseData data}) =
      _$CategoryProductResponseImpl;

  factory _CategoryProductResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryProductResponseImpl.fromJson;

  @override
  ProductResponseData get data;

  /// Create a copy of CategoryProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductResponseImplCopyWith<_$CategoryProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductResponseData _$ProductResponseDataFromJson(Map<String, dynamic> json) {
  return _ProductResponseData.fromJson(json);
}

/// @nodoc
mixin _$ProductResponseData {
  ProductSubCategory get sub_category => throw _privateConstructorUsedError;
  List<CategoryProduct> get products => throw _privateConstructorUsedError;
  List<ChildProductCategory> get child_categories =>
      throw _privateConstructorUsedError;
  List<ChildProductCategory> get sub_categories =>
      throw _privateConstructorUsedError;
  List<ProductSize> get sizes => throw _privateConstructorUsedError;
  List<CategoryColorModel> get colors => throw _privateConstructorUsedError;

  /// Serializes this ProductResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseDataCopyWith<ProductResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseDataCopyWith<$Res> {
  factory $ProductResponseDataCopyWith(
          ProductResponseData value, $Res Function(ProductResponseData) then) =
      _$ProductResponseDataCopyWithImpl<$Res, ProductResponseData>;
  @useResult
  $Res call(
      {ProductSubCategory sub_category,
      List<CategoryProduct> products,
      List<ChildProductCategory> child_categories,
      List<ChildProductCategory> sub_categories,
      List<ProductSize> sizes,
      List<CategoryColorModel> colors});

  $ProductSubCategoryCopyWith<$Res> get sub_category;
}

/// @nodoc
class _$ProductResponseDataCopyWithImpl<$Res, $Val extends ProductResponseData>
    implements $ProductResponseDataCopyWith<$Res> {
  _$ProductResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub_category = null,
    Object? products = null,
    Object? child_categories = null,
    Object? sub_categories = null,
    Object? sizes = null,
    Object? colors = null,
  }) {
    return _then(_value.copyWith(
      sub_category: null == sub_category
          ? _value.sub_category
          : sub_category // ignore: cast_nullable_to_non_nullable
              as ProductSubCategory,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CategoryProduct>,
      child_categories: null == child_categories
          ? _value.child_categories
          : child_categories // ignore: cast_nullable_to_non_nullable
              as List<ChildProductCategory>,
      sub_categories: null == sub_categories
          ? _value.sub_categories
          : sub_categories // ignore: cast_nullable_to_non_nullable
              as List<ChildProductCategory>,
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<ProductSize>,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<CategoryColorModel>,
    ) as $Val);
  }

  /// Create a copy of ProductResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductSubCategoryCopyWith<$Res> get sub_category {
    return $ProductSubCategoryCopyWith<$Res>(_value.sub_category, (value) {
      return _then(_value.copyWith(sub_category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductResponseDataImplCopyWith<$Res>
    implements $ProductResponseDataCopyWith<$Res> {
  factory _$$ProductResponseDataImplCopyWith(_$ProductResponseDataImpl value,
          $Res Function(_$ProductResponseDataImpl) then) =
      __$$ProductResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductSubCategory sub_category,
      List<CategoryProduct> products,
      List<ChildProductCategory> child_categories,
      List<ChildProductCategory> sub_categories,
      List<ProductSize> sizes,
      List<CategoryColorModel> colors});

  @override
  $ProductSubCategoryCopyWith<$Res> get sub_category;
}

/// @nodoc
class __$$ProductResponseDataImplCopyWithImpl<$Res>
    extends _$ProductResponseDataCopyWithImpl<$Res, _$ProductResponseDataImpl>
    implements _$$ProductResponseDataImplCopyWith<$Res> {
  __$$ProductResponseDataImplCopyWithImpl(_$ProductResponseDataImpl _value,
      $Res Function(_$ProductResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sub_category = null,
    Object? products = null,
    Object? child_categories = null,
    Object? sub_categories = null,
    Object? sizes = null,
    Object? colors = null,
  }) {
    return _then(_$ProductResponseDataImpl(
      sub_category: null == sub_category
          ? _value.sub_category
          : sub_category // ignore: cast_nullable_to_non_nullable
              as ProductSubCategory,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CategoryProduct>,
      child_categories: null == child_categories
          ? _value._child_categories
          : child_categories // ignore: cast_nullable_to_non_nullable
              as List<ChildProductCategory>,
      sub_categories: null == sub_categories
          ? _value._sub_categories
          : sub_categories // ignore: cast_nullable_to_non_nullable
              as List<ChildProductCategory>,
      sizes: null == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<ProductSize>,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<CategoryColorModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseDataImpl implements _ProductResponseData {
  const _$ProductResponseDataImpl(
      {this.sub_category = const ProductSubCategory(),
      final List<CategoryProduct> products = const [],
      final List<ChildProductCategory> child_categories = const [],
      final List<ChildProductCategory> sub_categories = const [],
      final List<ProductSize> sizes = const [],
      final List<CategoryColorModel> colors = const []})
      : _products = products,
        _child_categories = child_categories,
        _sub_categories = sub_categories,
        _sizes = sizes,
        _colors = colors;

  factory _$ProductResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseDataImplFromJson(json);

  @override
  @JsonKey()
  final ProductSubCategory sub_category;
  final List<CategoryProduct> _products;
  @override
  @JsonKey()
  List<CategoryProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ChildProductCategory> _child_categories;
  @override
  @JsonKey()
  List<ChildProductCategory> get child_categories {
    if (_child_categories is EqualUnmodifiableListView)
      return _child_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_child_categories);
  }

  final List<ChildProductCategory> _sub_categories;
  @override
  @JsonKey()
  List<ChildProductCategory> get sub_categories {
    if (_sub_categories is EqualUnmodifiableListView) return _sub_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sub_categories);
  }

  final List<ProductSize> _sizes;
  @override
  @JsonKey()
  List<ProductSize> get sizes {
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizes);
  }

  final List<CategoryColorModel> _colors;
  @override
  @JsonKey()
  List<CategoryColorModel> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'ProductResponseData(sub_category: $sub_category, products: $products, child_categories: $child_categories, sub_categories: $sub_categories, sizes: $sizes, colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseDataImpl &&
            (identical(other.sub_category, sub_category) ||
                other.sub_category == sub_category) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._child_categories, _child_categories) &&
            const DeepCollectionEquality()
                .equals(other._sub_categories, _sub_categories) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sub_category,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_child_categories),
      const DeepCollectionEquality().hash(_sub_categories),
      const DeepCollectionEquality().hash(_sizes),
      const DeepCollectionEquality().hash(_colors));

  /// Create a copy of ProductResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseDataImplCopyWith<_$ProductResponseDataImpl> get copyWith =>
      __$$ProductResponseDataImplCopyWithImpl<_$ProductResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ProductResponseData implements ProductResponseData {
  const factory _ProductResponseData(
      {final ProductSubCategory sub_category,
      final List<CategoryProduct> products,
      final List<ChildProductCategory> child_categories,
      final List<ChildProductCategory> sub_categories,
      final List<ProductSize> sizes,
      final List<CategoryColorModel> colors}) = _$ProductResponseDataImpl;

  factory _ProductResponseData.fromJson(Map<String, dynamic> json) =
      _$ProductResponseDataImpl.fromJson;

  @override
  ProductSubCategory get sub_category;
  @override
  List<CategoryProduct> get products;
  @override
  List<ChildProductCategory> get child_categories;
  @override
  List<ChildProductCategory> get sub_categories;
  @override
  List<ProductSize> get sizes;
  @override
  List<CategoryColorModel> get colors;

  /// Create a copy of ProductResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseDataImplCopyWith<_$ProductResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductSubCategory _$ProductSubCategoryFromJson(Map<String, dynamic> json) {
  return _ProductSubCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductSubCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this ProductSubCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSubCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSubCategoryCopyWith<ProductSubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSubCategoryCopyWith<$Res> {
  factory $ProductSubCategoryCopyWith(
          ProductSubCategory value, $Res Function(ProductSubCategory) then) =
      _$ProductSubCategoryCopyWithImpl<$Res, ProductSubCategory>;
  @useResult
  $Res call({int id, String title, String slug});
}

/// @nodoc
class _$ProductSubCategoryCopyWithImpl<$Res, $Val extends ProductSubCategory>
    implements $ProductSubCategoryCopyWith<$Res> {
  _$ProductSubCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSubCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSubCategoryImplCopyWith<$Res>
    implements $ProductSubCategoryCopyWith<$Res> {
  factory _$$ProductSubCategoryImplCopyWith(_$ProductSubCategoryImpl value,
          $Res Function(_$ProductSubCategoryImpl) then) =
      __$$ProductSubCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String slug});
}

/// @nodoc
class __$$ProductSubCategoryImplCopyWithImpl<$Res>
    extends _$ProductSubCategoryCopyWithImpl<$Res, _$ProductSubCategoryImpl>
    implements _$$ProductSubCategoryImplCopyWith<$Res> {
  __$$ProductSubCategoryImplCopyWithImpl(_$ProductSubCategoryImpl _value,
      $Res Function(_$ProductSubCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductSubCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? slug = null,
  }) {
    return _then(_$ProductSubCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSubCategoryImpl implements _ProductSubCategory {
  const _$ProductSubCategoryImpl(
      {this.id = -1, this.title = '', this.slug = ''});

  factory _$ProductSubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSubCategoryImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String slug;

  @override
  String toString() {
    return 'ProductSubCategory(id: $id, title: $title, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSubCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, slug);

  /// Create a copy of ProductSubCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSubCategoryImplCopyWith<_$ProductSubCategoryImpl> get copyWith =>
      __$$ProductSubCategoryImplCopyWithImpl<_$ProductSubCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSubCategoryImplToJson(
      this,
    );
  }
}

abstract class _ProductSubCategory implements ProductSubCategory {
  const factory _ProductSubCategory(
      {final int id,
      final String title,
      final String slug}) = _$ProductSubCategoryImpl;

  factory _ProductSubCategory.fromJson(Map<String, dynamic> json) =
      _$ProductSubCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get slug;

  /// Create a copy of ProductSubCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSubCategoryImplCopyWith<_$ProductSubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryProduct _$CategoryProductFromJson(Map<String, dynamic> json) {
  return _CategoryProduct.fromJson(json);
}

/// @nodoc
mixin _$CategoryProduct {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer')
  int? get offer => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_text')
  String? get offer_text => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  /// Serializes this CategoryProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryProductCopyWith<CategoryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductCopyWith<$Res> {
  factory $CategoryProductCopyWith(
          CategoryProduct value, $Res Function(CategoryProduct) then) =
      _$CategoryProductCopyWithImpl<$Res, CategoryProduct>;
  @useResult
  $Res call(
      {int id,
      String title,
      String currency,
      String slug,
      double price,
      @JsonKey(name: 'offer') int? offer,
      @JsonKey(name: 'offer_text') String? offer_text,
      int qty,
      double? weight,
      String code,
      String description,
      String image,
      int rank,
      int status});
}

/// @nodoc
class _$CategoryProductCopyWithImpl<$Res, $Val extends CategoryProduct>
    implements $CategoryProductCopyWith<$Res> {
  _$CategoryProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? currency = null,
    Object? slug = null,
    Object? price = null,
    Object? offer = freezed,
    Object? offer_text = freezed,
    Object? qty = null,
    Object? weight = freezed,
    Object? code = null,
    Object? description = null,
    Object? image = null,
    Object? rank = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as int?,
      offer_text: freezed == offer_text
          ? _value.offer_text
          : offer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryProductImplCopyWith<$Res>
    implements $CategoryProductCopyWith<$Res> {
  factory _$$CategoryProductImplCopyWith(_$CategoryProductImpl value,
          $Res Function(_$CategoryProductImpl) then) =
      __$$CategoryProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String currency,
      String slug,
      double price,
      @JsonKey(name: 'offer') int? offer,
      @JsonKey(name: 'offer_text') String? offer_text,
      int qty,
      double? weight,
      String code,
      String description,
      String image,
      int rank,
      int status});
}

/// @nodoc
class __$$CategoryProductImplCopyWithImpl<$Res>
    extends _$CategoryProductCopyWithImpl<$Res, _$CategoryProductImpl>
    implements _$$CategoryProductImplCopyWith<$Res> {
  __$$CategoryProductImplCopyWithImpl(
      _$CategoryProductImpl _value, $Res Function(_$CategoryProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? currency = null,
    Object? slug = null,
    Object? price = null,
    Object? offer = freezed,
    Object? offer_text = freezed,
    Object? qty = null,
    Object? weight = freezed,
    Object? code = null,
    Object? description = null,
    Object? image = null,
    Object? rank = null,
    Object? status = null,
  }) {
    return _then(_$CategoryProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as int?,
      offer_text: freezed == offer_text
          ? _value.offer_text
          : offer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryProductImpl implements _CategoryProduct {
  const _$CategoryProductImpl(
      {this.id = -1,
      this.title = '',
      this.currency = 'NPR',
      this.slug = '',
      this.price = 0,
      @JsonKey(name: 'offer') this.offer,
      @JsonKey(name: 'offer_text') this.offer_text,
      this.qty = 0,
      this.weight,
      this.code = '',
      this.description = '',
      this.image = '',
      this.rank = -1,
      this.status = 0});

  factory _$CategoryProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryProductImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey(name: 'offer')
  final int? offer;
  @override
  @JsonKey(name: 'offer_text')
  final String? offer_text;
  @override
  @JsonKey()
  final int qty;
  @override
  final double? weight;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final int rank;
  @override
  @JsonKey()
  final int status;

  @override
  String toString() {
    return 'CategoryProduct(id: $id, title: $title, currency: $currency, slug: $slug, price: $price, offer: $offer, offer_text: $offer_text, qty: $qty, weight: $weight, code: $code, description: $description, image: $image, rank: $rank, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.offer, offer) || other.offer == offer) &&
            (identical(other.offer_text, offer_text) ||
                other.offer_text == offer_text) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, currency, slug, price,
      offer, offer_text, qty, weight, code, description, image, rank, status);

  /// Create a copy of CategoryProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductImplCopyWith<_$CategoryProductImpl> get copyWith =>
      __$$CategoryProductImplCopyWithImpl<_$CategoryProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryProductImplToJson(
      this,
    );
  }
}

abstract class _CategoryProduct implements CategoryProduct {
  const factory _CategoryProduct(
      {final int id,
      final String title,
      final String currency,
      final String slug,
      final double price,
      @JsonKey(name: 'offer') final int? offer,
      @JsonKey(name: 'offer_text') final String? offer_text,
      final int qty,
      final double? weight,
      final String code,
      final String description,
      final String image,
      final int rank,
      final int status}) = _$CategoryProductImpl;

  factory _CategoryProduct.fromJson(Map<String, dynamic> json) =
      _$CategoryProductImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get currency;
  @override
  String get slug;
  @override
  double get price;
  @override
  @JsonKey(name: 'offer')
  int? get offer;
  @override
  @JsonKey(name: 'offer_text')
  String? get offer_text;
  @override
  int get qty;
  @override
  double? get weight;
  @override
  String get code;
  @override
  String get description;
  @override
  String get image;
  @override
  int get rank;
  @override
  int get status;

  /// Create a copy of CategoryProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryProductImplCopyWith<_$CategoryProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildProductCategory _$ChildProductCategoryFromJson(Map<String, dynamic> json) {
  return _ChildProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ChildProductCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get short_title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this ChildProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildProductCategoryCopyWith<ChildProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildProductCategoryCopyWith<$Res> {
  factory $ChildProductCategoryCopyWith(ChildProductCategory value,
          $Res Function(ChildProductCategory) then) =
      _$ChildProductCategoryCopyWithImpl<$Res, ChildProductCategory>;
  @useResult
  $Res call(
      {int id, String title, String short_title, String slug, String image});
}

/// @nodoc
class _$ChildProductCategoryCopyWithImpl<$Res,
        $Val extends ChildProductCategory>
    implements $ChildProductCategoryCopyWith<$Res> {
  _$ChildProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? short_title = null,
    Object? slug = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      short_title: null == short_title
          ? _value.short_title
          : short_title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildProductCategoryImplCopyWith<$Res>
    implements $ChildProductCategoryCopyWith<$Res> {
  factory _$$ChildProductCategoryImplCopyWith(_$ChildProductCategoryImpl value,
          $Res Function(_$ChildProductCategoryImpl) then) =
      __$$ChildProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String title, String short_title, String slug, String image});
}

/// @nodoc
class __$$ChildProductCategoryImplCopyWithImpl<$Res>
    extends _$ChildProductCategoryCopyWithImpl<$Res, _$ChildProductCategoryImpl>
    implements _$$ChildProductCategoryImplCopyWith<$Res> {
  __$$ChildProductCategoryImplCopyWithImpl(_$ChildProductCategoryImpl _value,
      $Res Function(_$ChildProductCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? short_title = null,
    Object? slug = null,
    Object? image = null,
  }) {
    return _then(_$ChildProductCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      short_title: null == short_title
          ? _value.short_title
          : short_title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildProductCategoryImpl implements _ChildProductCategory {
  const _$ChildProductCategoryImpl(
      {this.id = -1,
      this.title = '',
      this.short_title = '',
      this.slug = '',
      this.image = ''});

  factory _$ChildProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildProductCategoryImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String short_title;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String image;

  @override
  String toString() {
    return 'ChildProductCategory(id: $id, title: $title, short_title: $short_title, slug: $slug, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildProductCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.short_title, short_title) ||
                other.short_title == short_title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, short_title, slug, image);

  /// Create a copy of ChildProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildProductCategoryImplCopyWith<_$ChildProductCategoryImpl>
      get copyWith =>
          __$$ChildProductCategoryImplCopyWithImpl<_$ChildProductCategoryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _ChildProductCategory implements ChildProductCategory {
  const factory _ChildProductCategory(
      {final int id,
      final String title,
      final String short_title,
      final String slug,
      final String image}) = _$ChildProductCategoryImpl;

  factory _ChildProductCategory.fromJson(Map<String, dynamic> json) =
      _$ChildProductCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get short_title;
  @override
  String get slug;
  @override
  String get image;

  /// Create a copy of ChildProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildProductCategoryImplCopyWith<_$ChildProductCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductSize _$ProductSizeFromJson(Map<String, dynamic> json) {
  return _ProductSize.fromJson(json);
}

/// @nodoc
mixin _$ProductSize {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ProductSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSizeCopyWith<ProductSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSizeCopyWith<$Res> {
  factory $ProductSizeCopyWith(
          ProductSize value, $Res Function(ProductSize) then) =
      _$ProductSizeCopyWithImpl<$Res, ProductSize>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$ProductSizeCopyWithImpl<$Res, $Val extends ProductSize>
    implements $ProductSizeCopyWith<$Res> {
  _$ProductSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSizeImplCopyWith<$Res>
    implements $ProductSizeCopyWith<$Res> {
  factory _$$ProductSizeImplCopyWith(
          _$ProductSizeImpl value, $Res Function(_$ProductSizeImpl) then) =
      __$$ProductSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$ProductSizeImplCopyWithImpl<$Res>
    extends _$ProductSizeCopyWithImpl<$Res, _$ProductSizeImpl>
    implements _$$ProductSizeImplCopyWith<$Res> {
  __$$ProductSizeImplCopyWithImpl(
      _$ProductSizeImpl _value, $Res Function(_$ProductSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$ProductSizeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSizeImpl implements _ProductSize {
  const _$ProductSizeImpl({this.id = -1, this.title = ''});

  factory _$ProductSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSizeImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'ProductSize(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSizeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSizeImplCopyWith<_$ProductSizeImpl> get copyWith =>
      __$$ProductSizeImplCopyWithImpl<_$ProductSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSizeImplToJson(
      this,
    );
  }
}

abstract class _ProductSize implements ProductSize {
  const factory _ProductSize({final int id, final String title}) =
      _$ProductSizeImpl;

  factory _ProductSize.fromJson(Map<String, dynamic> json) =
      _$ProductSizeImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of ProductSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSizeImplCopyWith<_$ProductSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryColorModel _$CategoryColorModelFromJson(Map<String, dynamic> json) {
  return _CategoryColorModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryColorModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this CategoryColorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryColorModelCopyWith<CategoryColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryColorModelCopyWith<$Res> {
  factory $CategoryColorModelCopyWith(
          CategoryColorModel value, $Res Function(CategoryColorModel) then) =
      _$CategoryColorModelCopyWithImpl<$Res, CategoryColorModel>;
  @useResult
  $Res call({int id, String title, String code});
}

/// @nodoc
class _$CategoryColorModelCopyWithImpl<$Res, $Val extends CategoryColorModel>
    implements $CategoryColorModelCopyWith<$Res> {
  _$CategoryColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryColorModelImplCopyWith<$Res>
    implements $CategoryColorModelCopyWith<$Res> {
  factory _$$CategoryColorModelImplCopyWith(_$CategoryColorModelImpl value,
          $Res Function(_$CategoryColorModelImpl) then) =
      __$$CategoryColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String code});
}

/// @nodoc
class __$$CategoryColorModelImplCopyWithImpl<$Res>
    extends _$CategoryColorModelCopyWithImpl<$Res, _$CategoryColorModelImpl>
    implements _$$CategoryColorModelImplCopyWith<$Res> {
  __$$CategoryColorModelImplCopyWithImpl(_$CategoryColorModelImpl _value,
      $Res Function(_$CategoryColorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = null,
  }) {
    return _then(_$CategoryColorModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryColorModelImpl implements _CategoryColorModel {
  const _$CategoryColorModelImpl(
      {this.id = -1, this.title = '', this.code = ''});

  factory _$CategoryColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryColorModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'CategoryColorModel(id: $id, title: $title, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryColorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, code);

  /// Create a copy of CategoryColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryColorModelImplCopyWith<_$CategoryColorModelImpl> get copyWith =>
      __$$CategoryColorModelImplCopyWithImpl<_$CategoryColorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryColorModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryColorModel implements CategoryColorModel {
  const factory _CategoryColorModel(
      {final int id,
      final String title,
      final String code}) = _$CategoryColorModelImpl;

  factory _CategoryColorModel.fromJson(Map<String, dynamic> json) =
      _$CategoryColorModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get code;

  /// Create a copy of CategoryColorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryColorModelImplCopyWith<_$CategoryColorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
