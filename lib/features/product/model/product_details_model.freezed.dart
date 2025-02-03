// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  dynamic get offer => throw _privateConstructorUsedError;
  dynamic get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get preferredDateStatus => throw _privateConstructorUsedError;
  int get preferredMessageStatus => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  int get categoryCount => throw _privateConstructorUsedError;
  List<DetailsCategory> get categories => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_policy')
  String get shippingPolicy => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_specification')
  List<ProductSpecification> get productSpecification =>
      throw _privateConstructorUsedError;
  String get colorCheck => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  List<String> get productColorImage => throw _privateConstructorUsedError;
  String get image1 => throw _privateConstructorUsedError;
  String get image2 => throw _privateConstructorUsedError;
  String get image3 => throw _privateConstructorUsedError;
  String get image4 => throw _privateConstructorUsedError;
  List<String> get productImages => throw _privateConstructorUsedError;

  /// Serializes this ProductDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String currency,
      dynamic offer,
      dynamic price,
      String description,
      int qty,
      int preferredDateStatus,
      int preferredMessageStatus,
      String brand,
      int categoryCount,
      List<DetailsCategory> categories,
      String videoUrl,
      @JsonKey(name: 'shipping_policy') String shippingPolicy,
      @JsonKey(name: 'product_specification')
      List<ProductSpecification> productSpecification,
      String colorCheck,
      int limit,
      String weight,
      List<String> productColorImage,
      String image1,
      String image2,
      String image3,
      String image4,
      List<String> productImages});
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? currency = null,
    Object? offer = freezed,
    Object? price = freezed,
    Object? description = null,
    Object? qty = null,
    Object? preferredDateStatus = null,
    Object? preferredMessageStatus = null,
    Object? brand = null,
    Object? categoryCount = null,
    Object? categories = null,
    Object? videoUrl = null,
    Object? shippingPolicy = null,
    Object? productSpecification = null,
    Object? colorCheck = null,
    Object? limit = null,
    Object? weight = null,
    Object? productColorImage = null,
    Object? image1 = null,
    Object? image2 = null,
    Object? image3 = null,
    Object? image4 = null,
    Object? productImages = null,
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
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      preferredDateStatus: null == preferredDateStatus
          ? _value.preferredDateStatus
          : preferredDateStatus // ignore: cast_nullable_to_non_nullable
              as int,
      preferredMessageStatus: null == preferredMessageStatus
          ? _value.preferredMessageStatus
          : preferredMessageStatus // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCount: null == categoryCount
          ? _value.categoryCount
          : categoryCount // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<DetailsCategory>,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      shippingPolicy: null == shippingPolicy
          ? _value.shippingPolicy
          : shippingPolicy // ignore: cast_nullable_to_non_nullable
              as String,
      productSpecification: null == productSpecification
          ? _value.productSpecification
          : productSpecification // ignore: cast_nullable_to_non_nullable
              as List<ProductSpecification>,
      colorCheck: null == colorCheck
          ? _value.colorCheck
          : colorCheck // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      productColorImage: null == productColorImage
          ? _value.productColorImage
          : productColorImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      image2: null == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String,
      image3: null == image3
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String,
      image4: null == image4
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as String,
      productImages: null == productImages
          ? _value.productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailsModelImplCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$ProductDetailsModelImplCopyWith(_$ProductDetailsModelImpl value,
          $Res Function(_$ProductDetailsModelImpl) then) =
      __$$ProductDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String currency,
      dynamic offer,
      dynamic price,
      String description,
      int qty,
      int preferredDateStatus,
      int preferredMessageStatus,
      String brand,
      int categoryCount,
      List<DetailsCategory> categories,
      String videoUrl,
      @JsonKey(name: 'shipping_policy') String shippingPolicy,
      @JsonKey(name: 'product_specification')
      List<ProductSpecification> productSpecification,
      String colorCheck,
      int limit,
      String weight,
      List<String> productColorImage,
      String image1,
      String image2,
      String image3,
      String image4,
      List<String> productImages});
}

/// @nodoc
class __$$ProductDetailsModelImplCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$ProductDetailsModelImpl>
    implements _$$ProductDetailsModelImplCopyWith<$Res> {
  __$$ProductDetailsModelImplCopyWithImpl(_$ProductDetailsModelImpl _value,
      $Res Function(_$ProductDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? currency = null,
    Object? offer = freezed,
    Object? price = freezed,
    Object? description = null,
    Object? qty = null,
    Object? preferredDateStatus = null,
    Object? preferredMessageStatus = null,
    Object? brand = null,
    Object? categoryCount = null,
    Object? categories = null,
    Object? videoUrl = null,
    Object? shippingPolicy = null,
    Object? productSpecification = null,
    Object? colorCheck = null,
    Object? limit = null,
    Object? weight = null,
    Object? productColorImage = null,
    Object? image1 = null,
    Object? image2 = null,
    Object? image3 = null,
    Object? image4 = null,
    Object? productImages = null,
  }) {
    return _then(_$ProductDetailsModelImpl(
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
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      preferredDateStatus: null == preferredDateStatus
          ? _value.preferredDateStatus
          : preferredDateStatus // ignore: cast_nullable_to_non_nullable
              as int,
      preferredMessageStatus: null == preferredMessageStatus
          ? _value.preferredMessageStatus
          : preferredMessageStatus // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCount: null == categoryCount
          ? _value.categoryCount
          : categoryCount // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<DetailsCategory>,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      shippingPolicy: null == shippingPolicy
          ? _value.shippingPolicy
          : shippingPolicy // ignore: cast_nullable_to_non_nullable
              as String,
      productSpecification: null == productSpecification
          ? _value._productSpecification
          : productSpecification // ignore: cast_nullable_to_non_nullable
              as List<ProductSpecification>,
      colorCheck: null == colorCheck
          ? _value.colorCheck
          : colorCheck // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      productColorImage: null == productColorImage
          ? _value._productColorImage
          : productColorImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      image2: null == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String,
      image3: null == image3
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String,
      image4: null == image4
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as String,
      productImages: null == productImages
          ? _value._productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailsModelImpl implements _ProductDetailsModel {
  const _$ProductDetailsModelImpl(
      {this.id = 0,
      this.title = '',
      this.currency = 'NPR',
      this.offer,
      this.price,
      this.description = '',
      this.qty = 0,
      this.preferredDateStatus = 0,
      this.preferredMessageStatus = 0,
      this.brand = '',
      this.categoryCount = 0,
      final List<DetailsCategory> categories = const [],
      this.videoUrl = '',
      @JsonKey(name: 'shipping_policy') this.shippingPolicy = '',
      @JsonKey(name: 'product_specification')
      final List<ProductSpecification> productSpecification = const [],
      this.colorCheck = '',
      this.limit = 0,
      this.weight = '',
      final List<String> productColorImage = const [],
      this.image1 = '',
      this.image2 = '',
      this.image3 = '',
      this.image4 = '',
      final List<String> productImages = const []})
      : _categories = categories,
        _productSpecification = productSpecification,
        _productColorImage = productColorImage,
        _productImages = productImages;

  factory _$ProductDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailsModelImplFromJson(json);

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
  final dynamic offer;
  @override
  final dynamic price;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int qty;
  @override
  @JsonKey()
  final int preferredDateStatus;
  @override
  @JsonKey()
  final int preferredMessageStatus;
  @override
  @JsonKey()
  final String brand;
  @override
  @JsonKey()
  final int categoryCount;
  final List<DetailsCategory> _categories;
  @override
  @JsonKey()
  List<DetailsCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final String videoUrl;
  @override
  @JsonKey(name: 'shipping_policy')
  final String shippingPolicy;
  final List<ProductSpecification> _productSpecification;
  @override
  @JsonKey(name: 'product_specification')
  List<ProductSpecification> get productSpecification {
    if (_productSpecification is EqualUnmodifiableListView)
      return _productSpecification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productSpecification);
  }

  @override
  @JsonKey()
  final String colorCheck;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final String weight;
  final List<String> _productColorImage;
  @override
  @JsonKey()
  List<String> get productColorImage {
    if (_productColorImage is EqualUnmodifiableListView)
      return _productColorImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productColorImage);
  }

  @override
  @JsonKey()
  final String image1;
  @override
  @JsonKey()
  final String image2;
  @override
  @JsonKey()
  final String image3;
  @override
  @JsonKey()
  final String image4;
  final List<String> _productImages;
  @override
  @JsonKey()
  List<String> get productImages {
    if (_productImages is EqualUnmodifiableListView) return _productImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImages);
  }

  @override
  String toString() {
    return 'ProductDetailsModel(id: $id, title: $title, currency: $currency, offer: $offer, price: $price, description: $description, qty: $qty, preferredDateStatus: $preferredDateStatus, preferredMessageStatus: $preferredMessageStatus, brand: $brand, categoryCount: $categoryCount, categories: $categories, videoUrl: $videoUrl, shippingPolicy: $shippingPolicy, productSpecification: $productSpecification, colorCheck: $colorCheck, limit: $limit, weight: $weight, productColorImage: $productColorImage, image1: $image1, image2: $image2, image3: $image3, image4: $image4, productImages: $productImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality().equals(other.offer, offer) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.preferredDateStatus, preferredDateStatus) ||
                other.preferredDateStatus == preferredDateStatus) &&
            (identical(other.preferredMessageStatus, preferredMessageStatus) ||
                other.preferredMessageStatus == preferredMessageStatus) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.categoryCount, categoryCount) ||
                other.categoryCount == categoryCount) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.shippingPolicy, shippingPolicy) ||
                other.shippingPolicy == shippingPolicy) &&
            const DeepCollectionEquality()
                .equals(other._productSpecification, _productSpecification) &&
            (identical(other.colorCheck, colorCheck) ||
                other.colorCheck == colorCheck) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._productColorImage, _productColorImage) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.image2, image2) || other.image2 == image2) &&
            (identical(other.image3, image3) || other.image3 == image3) &&
            (identical(other.image4, image4) || other.image4 == image4) &&
            const DeepCollectionEquality()
                .equals(other._productImages, _productImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        currency,
        const DeepCollectionEquality().hash(offer),
        const DeepCollectionEquality().hash(price),
        description,
        qty,
        preferredDateStatus,
        preferredMessageStatus,
        brand,
        categoryCount,
        const DeepCollectionEquality().hash(_categories),
        videoUrl,
        shippingPolicy,
        const DeepCollectionEquality().hash(_productSpecification),
        colorCheck,
        limit,
        weight,
        const DeepCollectionEquality().hash(_productColorImage),
        image1,
        image2,
        image3,
        image4,
        const DeepCollectionEquality().hash(_productImages)
      ]);

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsModelImplCopyWith<_$ProductDetailsModelImpl> get copyWith =>
      __$$ProductDetailsModelImplCopyWithImpl<_$ProductDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailsModel implements ProductDetailsModel {
  const factory _ProductDetailsModel(
      {final int id,
      final String title,
      final String currency,
      final dynamic offer,
      final dynamic price,
      final String description,
      final int qty,
      final int preferredDateStatus,
      final int preferredMessageStatus,
      final String brand,
      final int categoryCount,
      final List<DetailsCategory> categories,
      final String videoUrl,
      @JsonKey(name: 'shipping_policy') final String shippingPolicy,
      @JsonKey(name: 'product_specification')
      final List<ProductSpecification> productSpecification,
      final String colorCheck,
      final int limit,
      final String weight,
      final List<String> productColorImage,
      final String image1,
      final String image2,
      final String image3,
      final String image4,
      final List<String> productImages}) = _$ProductDetailsModelImpl;

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get currency;
  @override
  dynamic get offer;
  @override
  dynamic get price;
  @override
  String get description;
  @override
  int get qty;
  @override
  int get preferredDateStatus;
  @override
  int get preferredMessageStatus;
  @override
  String get brand;
  @override
  int get categoryCount;
  @override
  List<DetailsCategory> get categories;
  @override
  String get videoUrl;
  @override
  @JsonKey(name: 'shipping_policy')
  String get shippingPolicy;
  @override
  @JsonKey(name: 'product_specification')
  List<ProductSpecification> get productSpecification;
  @override
  String get colorCheck;
  @override
  int get limit;
  @override
  String get weight;
  @override
  List<String> get productColorImage;
  @override
  String get image1;
  @override
  String get image2;
  @override
  String get image3;
  @override
  String get image4;
  @override
  List<String> get productImages;

  /// Create a copy of ProductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsModelImplCopyWith<_$ProductDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailsCategory _$DetailsCategoryFromJson(Map<String, dynamic> json) {
  return _DetailsCategory.fromJson(json);
}

/// @nodoc
mixin _$DetailsCategory {
  String get title => throw _privateConstructorUsedError;

  /// Serializes this DetailsCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailsCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsCategoryCopyWith<DetailsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCategoryCopyWith<$Res> {
  factory $DetailsCategoryCopyWith(
          DetailsCategory value, $Res Function(DetailsCategory) then) =
      _$DetailsCategoryCopyWithImpl<$Res, DetailsCategory>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$DetailsCategoryCopyWithImpl<$Res, $Val extends DetailsCategory>
    implements $DetailsCategoryCopyWith<$Res> {
  _$DetailsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsCategoryImplCopyWith<$Res>
    implements $DetailsCategoryCopyWith<$Res> {
  factory _$$DetailsCategoryImplCopyWith(_$DetailsCategoryImpl value,
          $Res Function(_$DetailsCategoryImpl) then) =
      __$$DetailsCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$DetailsCategoryImplCopyWithImpl<$Res>
    extends _$DetailsCategoryCopyWithImpl<$Res, _$DetailsCategoryImpl>
    implements _$$DetailsCategoryImplCopyWith<$Res> {
  __$$DetailsCategoryImplCopyWithImpl(
      _$DetailsCategoryImpl _value, $Res Function(_$DetailsCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$DetailsCategoryImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsCategoryImpl implements _DetailsCategory {
  const _$DetailsCategoryImpl({this.title = ''});

  factory _$DetailsCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsCategoryImplFromJson(json);

  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'DetailsCategory(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsCategoryImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of DetailsCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsCategoryImplCopyWith<_$DetailsCategoryImpl> get copyWith =>
      __$$DetailsCategoryImplCopyWithImpl<_$DetailsCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsCategoryImplToJson(
      this,
    );
  }
}

abstract class _DetailsCategory implements DetailsCategory {
  const factory _DetailsCategory({final String title}) = _$DetailsCategoryImpl;

  factory _DetailsCategory.fromJson(Map<String, dynamic> json) =
      _$DetailsCategoryImpl.fromJson;

  @override
  String get title;

  /// Create a copy of DetailsCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsCategoryImplCopyWith<_$DetailsCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedProduct _$RelatedProductFromJson(Map<String, dynamic> json) {
  return _RelatedProduct.fromJson(json);
}

/// @nodoc
mixin _$RelatedProduct {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get shortTitle => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  dynamic get offer => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Serializes this RelatedProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelatedProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelatedProductCopyWith<RelatedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedProductCopyWith<$Res> {
  factory $RelatedProductCopyWith(
          RelatedProduct value, $Res Function(RelatedProduct) then) =
      _$RelatedProductCopyWithImpl<$Res, RelatedProduct>;
  @useResult
  $Res call(
      {int id,
      String title,
      String shortTitle,
      String slug,
      String currency,
      String image,
      dynamic offer,
      double price});
}

/// @nodoc
class _$RelatedProductCopyWithImpl<$Res, $Val extends RelatedProduct>
    implements $RelatedProductCopyWith<$Res> {
  _$RelatedProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelatedProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? shortTitle = null,
    Object? slug = null,
    Object? currency = null,
    Object? image = null,
    Object? offer = freezed,
    Object? price = null,
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
      shortTitle: null == shortTitle
          ? _value.shortTitle
          : shortTitle // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelatedProductImplCopyWith<$Res>
    implements $RelatedProductCopyWith<$Res> {
  factory _$$RelatedProductImplCopyWith(_$RelatedProductImpl value,
          $Res Function(_$RelatedProductImpl) then) =
      __$$RelatedProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String shortTitle,
      String slug,
      String currency,
      String image,
      dynamic offer,
      double price});
}

/// @nodoc
class __$$RelatedProductImplCopyWithImpl<$Res>
    extends _$RelatedProductCopyWithImpl<$Res, _$RelatedProductImpl>
    implements _$$RelatedProductImplCopyWith<$Res> {
  __$$RelatedProductImplCopyWithImpl(
      _$RelatedProductImpl _value, $Res Function(_$RelatedProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelatedProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? shortTitle = null,
    Object? slug = null,
    Object? currency = null,
    Object? image = null,
    Object? offer = freezed,
    Object? price = null,
  }) {
    return _then(_$RelatedProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortTitle: null == shortTitle
          ? _value.shortTitle
          : shortTitle // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      offer: freezed == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedProductImpl implements _RelatedProduct {
  const _$RelatedProductImpl(
      {this.id = 0,
      this.title = '',
      this.shortTitle = '',
      this.slug = '',
      this.currency = 'NPR',
      this.image = '',
      this.offer,
      this.price = 0.0});

  factory _$RelatedProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedProductImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String shortTitle;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final String image;
  @override
  final dynamic offer;
  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'RelatedProduct(id: $id, title: $title, shortTitle: $shortTitle, slug: $slug, currency: $currency, image: $image, offer: $offer, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.shortTitle, shortTitle) ||
                other.shortTitle == shortTitle) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other.offer, offer) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, shortTitle, slug,
      currency, image, const DeepCollectionEquality().hash(offer), price);

  /// Create a copy of RelatedProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedProductImplCopyWith<_$RelatedProductImpl> get copyWith =>
      __$$RelatedProductImplCopyWithImpl<_$RelatedProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedProductImplToJson(
      this,
    );
  }
}

abstract class _RelatedProduct implements RelatedProduct {
  const factory _RelatedProduct(
      {final int id,
      final String title,
      final String shortTitle,
      final String slug,
      final String currency,
      final String image,
      final dynamic offer,
      final double price}) = _$RelatedProductImpl;

  factory _RelatedProduct.fromJson(Map<String, dynamic> json) =
      _$RelatedProductImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get shortTitle;
  @override
  String get slug;
  @override
  String get currency;
  @override
  String get image;
  @override
  dynamic get offer;
  @override
  double get price;

  /// Create a copy of RelatedProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelatedProductImplCopyWith<_$RelatedProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiResponse {
  ProductDetailsModel? get product => throw _privateConstructorUsedError;
  List<RelatedProduct> get related_products =>
      throw _privateConstructorUsedError;
  String get user_email => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_exists')
  bool? get reviewExists => throw _privateConstructorUsedError;
  @JsonKey(name: "all_reviews")
  List<ReviewData> get allReviews => throw _privateConstructorUsedError;

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res, ApiResponse>;
  @useResult
  $Res call(
      {ProductDetailsModel? product,
      List<RelatedProduct> related_products,
      String user_email,
      @JsonKey(name: 'review_exists') bool? reviewExists,
      @JsonKey(name: "all_reviews") List<ReviewData> allReviews});

  $ProductDetailsModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res, $Val extends ApiResponse>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? related_products = null,
    Object? user_email = null,
    Object? reviewExists = freezed,
    Object? allReviews = null,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailsModel?,
      related_products: null == related_products
          ? _value.related_products
          : related_products // ignore: cast_nullable_to_non_nullable
              as List<RelatedProduct>,
      user_email: null == user_email
          ? _value.user_email
          : user_email // ignore: cast_nullable_to_non_nullable
              as String,
      reviewExists: freezed == reviewExists
          ? _value.reviewExists
          : reviewExists // ignore: cast_nullable_to_non_nullable
              as bool?,
      allReviews: null == allReviews
          ? _value.allReviews
          : allReviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewData>,
    ) as $Val);
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDetailsModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDetailsModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResponseImplCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$$ApiResponseImplCopyWith(
          _$ApiResponseImpl value, $Res Function(_$ApiResponseImpl) then) =
      __$$ApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductDetailsModel? product,
      List<RelatedProduct> related_products,
      String user_email,
      @JsonKey(name: 'review_exists') bool? reviewExists,
      @JsonKey(name: "all_reviews") List<ReviewData> allReviews});

  @override
  $ProductDetailsModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ApiResponseImplCopyWithImpl<$Res>
    extends _$ApiResponseCopyWithImpl<$Res, _$ApiResponseImpl>
    implements _$$ApiResponseImplCopyWith<$Res> {
  __$$ApiResponseImplCopyWithImpl(
      _$ApiResponseImpl _value, $Res Function(_$ApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? related_products = null,
    Object? user_email = null,
    Object? reviewExists = freezed,
    Object? allReviews = null,
  }) {
    return _then(_$ApiResponseImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailsModel?,
      related_products: null == related_products
          ? _value._related_products
          : related_products // ignore: cast_nullable_to_non_nullable
              as List<RelatedProduct>,
      user_email: null == user_email
          ? _value.user_email
          : user_email // ignore: cast_nullable_to_non_nullable
              as String,
      reviewExists: freezed == reviewExists
          ? _value.reviewExists
          : reviewExists // ignore: cast_nullable_to_non_nullable
              as bool?,
      allReviews: null == allReviews
          ? _value._allReviews
          : allReviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResponseImpl implements _ApiResponse {
  const _$ApiResponseImpl(
      {this.product,
      final List<RelatedProduct> related_products = const [],
      this.user_email = '',
      @JsonKey(name: 'review_exists') this.reviewExists,
      @JsonKey(name: "all_reviews")
      final List<ReviewData> allReviews = const []})
      : _related_products = related_products,
        _allReviews = allReviews;

  factory _$ApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseImplFromJson(json);

  @override
  final ProductDetailsModel? product;
  final List<RelatedProduct> _related_products;
  @override
  @JsonKey()
  List<RelatedProduct> get related_products {
    if (_related_products is EqualUnmodifiableListView)
      return _related_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_related_products);
  }

  @override
  @JsonKey()
  final String user_email;
  @override
  @JsonKey(name: 'review_exists')
  final bool? reviewExists;
  final List<ReviewData> _allReviews;
  @override
  @JsonKey(name: "all_reviews")
  List<ReviewData> get allReviews {
    if (_allReviews is EqualUnmodifiableListView) return _allReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allReviews);
  }

  @override
  String toString() {
    return 'ApiResponse(product: $product, related_products: $related_products, user_email: $user_email, reviewExists: $reviewExists, allReviews: $allReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._related_products, _related_products) &&
            (identical(other.user_email, user_email) ||
                other.user_email == user_email) &&
            (identical(other.reviewExists, reviewExists) ||
                other.reviewExists == reviewExists) &&
            const DeepCollectionEquality()
                .equals(other._allReviews, _allReviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      const DeepCollectionEquality().hash(_related_products),
      user_email,
      reviewExists,
      const DeepCollectionEquality().hash(_allReviews));

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseImplCopyWith<_$ApiResponseImpl> get copyWith =>
      __$$ApiResponseImplCopyWithImpl<_$ApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ApiResponse implements ApiResponse {
  const factory _ApiResponse(
          {final ProductDetailsModel? product,
          final List<RelatedProduct> related_products,
          final String user_email,
          @JsonKey(name: 'review_exists') final bool? reviewExists,
          @JsonKey(name: "all_reviews") final List<ReviewData> allReviews}) =
      _$ApiResponseImpl;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$ApiResponseImpl.fromJson;

  @override
  ProductDetailsModel? get product;
  @override
  List<RelatedProduct> get related_products;
  @override
  String get user_email;
  @override
  @JsonKey(name: 'review_exists')
  bool? get reviewExists;
  @override
  @JsonKey(name: "all_reviews")
  List<ReviewData> get allReviews;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseImplCopyWith<_$ApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductSpecification _$ProductSpecificationFromJson(Map<String, dynamic> json) {
  return _ProductSpecification.fromJson(json);
}

/// @nodoc
mixin _$ProductSpecification {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'specification_title')
  String get specificationTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'specification_value')
  String get specificationValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProductSpecification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSpecification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSpecificationCopyWith<ProductSpecification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSpecificationCopyWith<$Res> {
  factory $ProductSpecificationCopyWith(ProductSpecification value,
          $Res Function(ProductSpecification) then) =
      _$ProductSpecificationCopyWithImpl<$Res, ProductSpecification>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'specification_title') String specificationTitle,
      @JsonKey(name: 'specification_value') String specificationValue,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$ProductSpecificationCopyWithImpl<$Res,
        $Val extends ProductSpecification>
    implements $ProductSpecificationCopyWith<$Res> {
  _$ProductSpecificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSpecification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? specificationTitle = null,
    Object? specificationValue = null,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      specificationTitle: null == specificationTitle
          ? _value.specificationTitle
          : specificationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      specificationValue: null == specificationValue
          ? _value.specificationValue
          : specificationValue // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSpecificationImplCopyWith<$Res>
    implements $ProductSpecificationCopyWith<$Res> {
  factory _$$ProductSpecificationImplCopyWith(_$ProductSpecificationImpl value,
          $Res Function(_$ProductSpecificationImpl) then) =
      __$$ProductSpecificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'specification_title') String specificationTitle,
      @JsonKey(name: 'specification_value') String specificationValue,
      @JsonKey(name: 'deleted_at') String? deletedAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$ProductSpecificationImplCopyWithImpl<$Res>
    extends _$ProductSpecificationCopyWithImpl<$Res, _$ProductSpecificationImpl>
    implements _$$ProductSpecificationImplCopyWith<$Res> {
  __$$ProductSpecificationImplCopyWithImpl(_$ProductSpecificationImpl _value,
      $Res Function(_$ProductSpecificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductSpecification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? specificationTitle = null,
    Object? specificationValue = null,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProductSpecificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      specificationTitle: null == specificationTitle
          ? _value.specificationTitle
          : specificationTitle // ignore: cast_nullable_to_non_nullable
              as String,
      specificationValue: null == specificationValue
          ? _value.specificationValue
          : specificationValue // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSpecificationImpl implements _ProductSpecification {
  const _$ProductSpecificationImpl(
      {this.id = -1,
      @JsonKey(name: 'product_id') this.productId = -1,
      @JsonKey(name: 'specification_title') this.specificationTitle = '',
      @JsonKey(name: 'specification_value') this.specificationValue = '',
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'updated_at') this.updatedAt = ''});

  factory _$ProductSpecificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSpecificationImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'specification_title')
  final String specificationTitle;
  @override
  @JsonKey(name: 'specification_value')
  final String specificationValue;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'ProductSpecification(id: $id, productId: $productId, specificationTitle: $specificationTitle, specificationValue: $specificationValue, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSpecificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.specificationTitle, specificationTitle) ||
                other.specificationTitle == specificationTitle) &&
            (identical(other.specificationValue, specificationValue) ||
                other.specificationValue == specificationValue) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, productId,
      specificationTitle, specificationValue, deletedAt, createdAt, updatedAt);

  /// Create a copy of ProductSpecification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSpecificationImplCopyWith<_$ProductSpecificationImpl>
      get copyWith =>
          __$$ProductSpecificationImplCopyWithImpl<_$ProductSpecificationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSpecificationImplToJson(
      this,
    );
  }
}

abstract class _ProductSpecification implements ProductSpecification {
  const factory _ProductSpecification(
          {final int id,
          @JsonKey(name: 'product_id') final int productId,
          @JsonKey(name: 'specification_title') final String specificationTitle,
          @JsonKey(name: 'specification_value') final String specificationValue,
          @JsonKey(name: 'deleted_at') final String? deletedAt,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt}) =
      _$ProductSpecificationImpl;

  factory _ProductSpecification.fromJson(Map<String, dynamic> json) =
      _$ProductSpecificationImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'specification_title')
  String get specificationTitle;
  @override
  @JsonKey(name: 'specification_value')
  String get specificationValue;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of ProductSpecification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSpecificationImplCopyWith<_$ProductSpecificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReviewData _$ReviewDataFromJson(Map<String, dynamic> json) {
  return _ReviewData.fromJson(json);
}

/// @nodoc
mixin _$ReviewData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "review_date")
  String get reviewDate => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_at")
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ReviewData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewDataCopyWith<ReviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDataCopyWith<$Res> {
  factory $ReviewDataCopyWith(
          ReviewData value, $Res Function(ReviewData) then) =
      _$ReviewDataCopyWithImpl<$Res, ReviewData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "product_id") int productId,
      String name,
      String email,
      String phone,
      String rating,
      String review,
      int status,
      @JsonKey(name: "review_date") String reviewDate,
      @JsonKey(name: "deleted_at") String? deletedAt,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
}

/// @nodoc
class _$ReviewDataCopyWithImpl<$Res, $Val extends ReviewData>
    implements $ReviewDataCopyWith<$Res> {
  _$ReviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? rating = null,
    Object? review = null,
    Object? status = null,
    Object? reviewDate = null,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      reviewDate: null == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewDataImplCopyWith<$Res>
    implements $ReviewDataCopyWith<$Res> {
  factory _$$ReviewDataImplCopyWith(
          _$ReviewDataImpl value, $Res Function(_$ReviewDataImpl) then) =
      __$$ReviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "product_id") int productId,
      String name,
      String email,
      String phone,
      String rating,
      String review,
      int status,
      @JsonKey(name: "review_date") String reviewDate,
      @JsonKey(name: "deleted_at") String? deletedAt,
      @JsonKey(name: "created_at") String createdAt,
      @JsonKey(name: "updated_at") String updatedAt});
}

/// @nodoc
class __$$ReviewDataImplCopyWithImpl<$Res>
    extends _$ReviewDataCopyWithImpl<$Res, _$ReviewDataImpl>
    implements _$$ReviewDataImplCopyWith<$Res> {
  __$$ReviewDataImplCopyWithImpl(
      _$ReviewDataImpl _value, $Res Function(_$ReviewDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? rating = null,
    Object? review = null,
    Object? status = null,
    Object? reviewDate = null,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ReviewDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      reviewDate: null == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewDataImpl implements _ReviewData {
  const _$ReviewDataImpl(
      {this.id = -1,
      @JsonKey(name: "product_id") this.productId = -1,
      this.name = '',
      this.email = '',
      this.phone = '',
      this.rating = '',
      this.review = '',
      this.status = 0,
      @JsonKey(name: "review_date") this.reviewDate = '',
      @JsonKey(name: "deleted_at") this.deletedAt,
      @JsonKey(name: "created_at") this.createdAt = '',
      @JsonKey(name: "updated_at") this.updatedAt = ''});

  factory _$ReviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDataImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String rating;
  @override
  @JsonKey()
  final String review;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey(name: "review_date")
  final String reviewDate;
  @override
  @JsonKey(name: "deleted_at")
  final String? deletedAt;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;

  @override
  String toString() {
    return 'ReviewData(id: $id, productId: $productId, name: $name, email: $email, phone: $phone, rating: $rating, review: $review, status: $status, reviewDate: $reviewDate, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.reviewDate, reviewDate) ||
                other.reviewDate == reviewDate) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      name,
      email,
      phone,
      rating,
      review,
      status,
      reviewDate,
      deletedAt,
      createdAt,
      updatedAt);

  /// Create a copy of ReviewData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDataImplCopyWith<_$ReviewDataImpl> get copyWith =>
      __$$ReviewDataImplCopyWithImpl<_$ReviewDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDataImplToJson(
      this,
    );
  }
}

abstract class _ReviewData implements ReviewData {
  const factory _ReviewData(
      {final int id,
      @JsonKey(name: "product_id") final int productId,
      final String name,
      final String email,
      final String phone,
      final String rating,
      final String review,
      final int status,
      @JsonKey(name: "review_date") final String reviewDate,
      @JsonKey(name: "deleted_at") final String? deletedAt,
      @JsonKey(name: "created_at") final String createdAt,
      @JsonKey(name: "updated_at") final String updatedAt}) = _$ReviewDataImpl;

  factory _ReviewData.fromJson(Map<String, dynamic> json) =
      _$ReviewDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get rating;
  @override
  String get review;
  @override
  int get status;
  @override
  @JsonKey(name: "review_date")
  String get reviewDate;
  @override
  @JsonKey(name: "deleted_at")
  String? get deletedAt;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;

  /// Create a copy of ReviewData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewDataImplCopyWith<_$ReviewDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
