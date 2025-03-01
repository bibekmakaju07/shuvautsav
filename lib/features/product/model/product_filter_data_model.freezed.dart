// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_filter_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchDataResponse _$SearchDataResponseFromJson(Map<String, dynamic> json) {
  return _SearchDataResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchDataResponse {
  CategoryDataModel get data => throw _privateConstructorUsedError;

  /// Serializes this SearchDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchDataResponseCopyWith<SearchDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDataResponseCopyWith<$Res> {
  factory $SearchDataResponseCopyWith(
          SearchDataResponse value, $Res Function(SearchDataResponse) then) =
      _$SearchDataResponseCopyWithImpl<$Res, SearchDataResponse>;
  @useResult
  $Res call({CategoryDataModel data});

  $CategoryDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$SearchDataResponseCopyWithImpl<$Res, $Val extends SearchDataResponse>
    implements $SearchDataResponseCopyWith<$Res> {
  _$SearchDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchDataResponse
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
              as CategoryDataModel,
    ) as $Val);
  }

  /// Create a copy of SearchDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryDataModelCopyWith<$Res> get data {
    return $CategoryDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchDataResponseImplCopyWith<$Res>
    implements $SearchDataResponseCopyWith<$Res> {
  factory _$$SearchDataResponseImplCopyWith(_$SearchDataResponseImpl value,
          $Res Function(_$SearchDataResponseImpl) then) =
      __$$SearchDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryDataModel data});

  @override
  $CategoryDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$SearchDataResponseImplCopyWithImpl<$Res>
    extends _$SearchDataResponseCopyWithImpl<$Res, _$SearchDataResponseImpl>
    implements _$$SearchDataResponseImplCopyWith<$Res> {
  __$$SearchDataResponseImplCopyWithImpl(_$SearchDataResponseImpl _value,
      $Res Function(_$SearchDataResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchDataResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDataResponseImpl implements _SearchDataResponse {
  const _$SearchDataResponseImpl({this.data = const CategoryDataModel()});

  factory _$SearchDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDataResponseImplFromJson(json);

  @override
  @JsonKey()
  final CategoryDataModel data;

  @override
  String toString() {
    return 'SearchDataResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDataResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of SearchDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDataResponseImplCopyWith<_$SearchDataResponseImpl> get copyWith =>
      __$$SearchDataResponseImplCopyWithImpl<_$SearchDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDataResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchDataResponse implements SearchDataResponse {
  const factory _SearchDataResponse({final CategoryDataModel data}) =
      _$SearchDataResponseImpl;

  factory _SearchDataResponse.fromJson(Map<String, dynamic> json) =
      _$SearchDataResponseImpl.fromJson;

  @override
  CategoryDataModel get data;

  /// Create a copy of SearchDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchDataResponseImplCopyWith<_$SearchDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDataModel _$CategoryDataModelFromJson(Map<String, dynamic> json) {
  return _CategoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryDataModel {
  List<ProductCategory> get categories => throw _privateConstructorUsedError;
  List<ColorOption> get colors => throw _privateConstructorUsedError;
  List<SizeOption> get sizes => throw _privateConstructorUsedError;

  /// Serializes this CategoryDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryDataModelCopyWith<CategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataModelCopyWith<$Res> {
  factory $CategoryDataModelCopyWith(
          CategoryDataModel value, $Res Function(CategoryDataModel) then) =
      _$CategoryDataModelCopyWithImpl<$Res, CategoryDataModel>;
  @useResult
  $Res call(
      {List<ProductCategory> categories,
      List<ColorOption> colors,
      List<SizeOption> sizes});
}

/// @nodoc
class _$CategoryDataModelCopyWithImpl<$Res, $Val extends CategoryDataModel>
    implements $CategoryDataModelCopyWith<$Res> {
  _$CategoryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? colors = null,
    Object? sizes = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorOption>,
      sizes: null == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<SizeOption>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDataModelImplCopyWith<$Res>
    implements $CategoryDataModelCopyWith<$Res> {
  factory _$$CategoryDataModelImplCopyWith(_$CategoryDataModelImpl value,
          $Res Function(_$CategoryDataModelImpl) then) =
      __$$CategoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductCategory> categories,
      List<ColorOption> colors,
      List<SizeOption> sizes});
}

/// @nodoc
class __$$CategoryDataModelImplCopyWithImpl<$Res>
    extends _$CategoryDataModelCopyWithImpl<$Res, _$CategoryDataModelImpl>
    implements _$$CategoryDataModelImplCopyWith<$Res> {
  __$$CategoryDataModelImplCopyWithImpl(_$CategoryDataModelImpl _value,
      $Res Function(_$CategoryDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? colors = null,
    Object? sizes = null,
  }) {
    return _then(_$CategoryDataModelImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorOption>,
      sizes: null == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<SizeOption>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDataModelImpl implements _CategoryDataModel {
  const _$CategoryDataModelImpl(
      {final List<ProductCategory> categories = const [],
      final List<ColorOption> colors = const [],
      final List<SizeOption> sizes = const []})
      : _categories = categories,
        _colors = colors,
        _sizes = sizes;

  factory _$CategoryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDataModelImplFromJson(json);

  final List<ProductCategory> _categories;
  @override
  @JsonKey()
  List<ProductCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ColorOption> _colors;
  @override
  @JsonKey()
  List<ColorOption> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  final List<SizeOption> _sizes;
  @override
  @JsonKey()
  List<SizeOption> get sizes {
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizes);
  }

  @override
  String toString() {
    return 'CategoryDataModel(categories: $categories, colors: $colors, sizes: $sizes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_sizes));

  /// Create a copy of CategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDataModelImplCopyWith<_$CategoryDataModelImpl> get copyWith =>
      __$$CategoryDataModelImplCopyWithImpl<_$CategoryDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryDataModel implements CategoryDataModel {
  const factory _CategoryDataModel(
      {final List<ProductCategory> categories,
      final List<ColorOption> colors,
      final List<SizeOption> sizes}) = _$CategoryDataModelImpl;

  factory _CategoryDataModel.fromJson(Map<String, dynamic> json) =
      _$CategoryDataModelImpl.fromJson;

  @override
  List<ProductCategory> get categories;
  @override
  List<ColorOption> get colors;
  @override
  List<SizeOption> get sizes;

  /// Create a copy of CategoryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDataModelImplCopyWith<_$CategoryDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this ColorOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorOptionCopyWith<ColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorOptionCopyWith<$Res> {
  factory $ColorOptionCopyWith(
          ColorOption value, $Res Function(ColorOption) then) =
      _$ColorOptionCopyWithImpl<$Res, ColorOption>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$ColorOptionCopyWithImpl<$Res, $Val extends ColorOption>
    implements $ColorOptionCopyWith<$Res> {
  _$ColorOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorOption
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
abstract class _$$ColorOptionImplCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$$ColorOptionImplCopyWith(
          _$ColorOptionImpl value, $Res Function(_$ColorOptionImpl) then) =
      __$$ColorOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$ColorOptionImplCopyWithImpl<$Res>
    extends _$ColorOptionCopyWithImpl<$Res, _$ColorOptionImpl>
    implements _$$ColorOptionImplCopyWith<$Res> {
  __$$ColorOptionImplCopyWithImpl(
      _$ColorOptionImpl _value, $Res Function(_$ColorOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$ColorOptionImpl(
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
class _$ColorOptionImpl implements _ColorOption {
  const _$ColorOptionImpl({this.id = -1, this.title = ''});

  factory _$ColorOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorOptionImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'ColorOption(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      __$$ColorOptionImplCopyWithImpl<_$ColorOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorOptionImplToJson(
      this,
    );
  }
}

abstract class _ColorOption implements ColorOption {
  const factory _ColorOption({final int id, final String title}) =
      _$ColorOptionImpl;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$ColorOptionImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SizeOption _$SizeOptionFromJson(Map<String, dynamic> json) {
  return _SizeOption.fromJson(json);
}

/// @nodoc
mixin _$SizeOption {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this SizeOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeOptionCopyWith<SizeOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeOptionCopyWith<$Res> {
  factory $SizeOptionCopyWith(
          SizeOption value, $Res Function(SizeOption) then) =
      _$SizeOptionCopyWithImpl<$Res, SizeOption>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$SizeOptionCopyWithImpl<$Res, $Val extends SizeOption>
    implements $SizeOptionCopyWith<$Res> {
  _$SizeOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SizeOption
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
abstract class _$$SizeOptionImplCopyWith<$Res>
    implements $SizeOptionCopyWith<$Res> {
  factory _$$SizeOptionImplCopyWith(
          _$SizeOptionImpl value, $Res Function(_$SizeOptionImpl) then) =
      __$$SizeOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$SizeOptionImplCopyWithImpl<$Res>
    extends _$SizeOptionCopyWithImpl<$Res, _$SizeOptionImpl>
    implements _$$SizeOptionImplCopyWith<$Res> {
  __$$SizeOptionImplCopyWithImpl(
      _$SizeOptionImpl _value, $Res Function(_$SizeOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$SizeOptionImpl(
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
class _$SizeOptionImpl implements _SizeOption {
  const _$SizeOptionImpl({this.id = -1, this.title = ''});

  factory _$SizeOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeOptionImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'SizeOption(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeOptionImplCopyWith<_$SizeOptionImpl> get copyWith =>
      __$$SizeOptionImplCopyWithImpl<_$SizeOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeOptionImplToJson(
      this,
    );
  }
}

abstract class _SizeOption implements SizeOption {
  const factory _SizeOption({final int id, final String title}) =
      _$SizeOptionImpl;

  factory _SizeOption.fromJson(Map<String, dynamic> json) =
      _$SizeOptionImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of SizeOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeOptionImplCopyWith<_$SizeOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
