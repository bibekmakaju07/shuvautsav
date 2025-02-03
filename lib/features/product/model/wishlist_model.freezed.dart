// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishListResponse _$WishListResponseFromJson(Map<String, dynamic> json) {
  return _WishListResponse.fromJson(json);
}

/// @nodoc
mixin _$WishListResponse {
  int get status => throw _privateConstructorUsedError;
  List<WishListData> get data => throw _privateConstructorUsedError;

  /// Serializes this WishListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListResponseCopyWith<WishListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListResponseCopyWith<$Res> {
  factory $WishListResponseCopyWith(
          WishListResponse value, $Res Function(WishListResponse) then) =
      _$WishListResponseCopyWithImpl<$Res, WishListResponse>;
  @useResult
  $Res call({int status, List<WishListData> data});
}

/// @nodoc
class _$WishListResponseCopyWithImpl<$Res, $Val extends WishListResponse>
    implements $WishListResponseCopyWith<$Res> {
  _$WishListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListResponse
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
              as List<WishListData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishListResponseImplCopyWith<$Res>
    implements $WishListResponseCopyWith<$Res> {
  factory _$$WishListResponseImplCopyWith(_$WishListResponseImpl value,
          $Res Function(_$WishListResponseImpl) then) =
      __$$WishListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, List<WishListData> data});
}

/// @nodoc
class __$$WishListResponseImplCopyWithImpl<$Res>
    extends _$WishListResponseCopyWithImpl<$Res, _$WishListResponseImpl>
    implements _$$WishListResponseImplCopyWith<$Res> {
  __$$WishListResponseImplCopyWithImpl(_$WishListResponseImpl _value,
      $Res Function(_$WishListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$WishListResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WishListData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishListResponseImpl implements _WishListResponse {
  const _$WishListResponseImpl(
      {this.status = 0, final List<WishListData> data = const []})
      : _data = data;

  factory _$WishListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListResponseImplFromJson(json);

  @override
  @JsonKey()
  final int status;
  final List<WishListData> _data;
  @override
  @JsonKey()
  List<WishListData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WishListResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  /// Create a copy of WishListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListResponseImplCopyWith<_$WishListResponseImpl> get copyWith =>
      __$$WishListResponseImplCopyWithImpl<_$WishListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListResponseImplToJson(
      this,
    );
  }
}

abstract class _WishListResponse implements WishListResponse {
  const factory _WishListResponse(
      {final int status,
      final List<WishListData> data}) = _$WishListResponseImpl;

  factory _WishListResponse.fromJson(Map<String, dynamic> json) =
      _$WishListResponseImpl.fromJson;

  @override
  int get status;
  @override
  List<WishListData> get data;

  /// Create a copy of WishListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListResponseImplCopyWith<_$WishListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WishListData _$WishListDataFromJson(Map<String, dynamic> json) {
  return _WishListData.fromJson(json);
}

/// @nodoc
mixin _$WishListData {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  /// Serializes this WishListData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WishListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WishListDataCopyWith<WishListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListDataCopyWith<$Res> {
  factory $WishListDataCopyWith(
          WishListData value, $Res Function(WishListData) then) =
      _$WishListDataCopyWithImpl<$Res, WishListData>;
  @useResult
  $Res call({int id, String image, String title, int rate, String slug});
}

/// @nodoc
class _$WishListDataCopyWithImpl<$Res, $Val extends WishListData>
    implements $WishListDataCopyWith<$Res> {
  _$WishListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WishListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? title = null,
    Object? rate = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishListDataImplCopyWith<$Res>
    implements $WishListDataCopyWith<$Res> {
  factory _$$WishListDataImplCopyWith(
          _$WishListDataImpl value, $Res Function(_$WishListDataImpl) then) =
      __$$WishListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String image, String title, int rate, String slug});
}

/// @nodoc
class __$$WishListDataImplCopyWithImpl<$Res>
    extends _$WishListDataCopyWithImpl<$Res, _$WishListDataImpl>
    implements _$$WishListDataImplCopyWith<$Res> {
  __$$WishListDataImplCopyWithImpl(
      _$WishListDataImpl _value, $Res Function(_$WishListDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WishListData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? title = null,
    Object? rate = null,
    Object? slug = null,
  }) {
    return _then(_$WishListDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishListDataImpl implements _WishListData {
  const _$WishListDataImpl(
      {this.id = -1,
      this.image = '',
      this.title = '',
      this.rate = 0,
      this.slug = ''});

  factory _$WishListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListDataImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int rate;
  @override
  @JsonKey()
  final String slug;

  @override
  String toString() {
    return 'WishListData(id: $id, image: $image, title: $title, rate: $rate, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, title, rate, slug);

  /// Create a copy of WishListData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListDataImplCopyWith<_$WishListDataImpl> get copyWith =>
      __$$WishListDataImplCopyWithImpl<_$WishListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListDataImplToJson(
      this,
    );
  }
}

abstract class _WishListData implements WishListData {
  const factory _WishListData(
      {final int id,
      final String image,
      final String title,
      final int rate,
      final String slug}) = _$WishListDataImpl;

  factory _WishListData.fromJson(Map<String, dynamic> json) =
      _$WishListDataImpl.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  String get title;
  @override
  int get rate;
  @override
  String get slug;

  /// Create a copy of WishListData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WishListDataImplCopyWith<_$WishListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
