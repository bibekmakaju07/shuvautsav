// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAddressDataModel _$UserAddressDataModelFromJson(Map<String, dynamic> json) {
  return _UserAddressDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserAddressDataModel {
  User get user => throw _privateConstructorUsedError;
  Map<String, String> get provinces => throw _privateConstructorUsedError;
  Map<String, String> get cities => throw _privateConstructorUsedError;
  Map<String, String> get areas => throw _privateConstructorUsedError;
  List<int> get wards => throw _privateConstructorUsedError;
  Map<String, String> get countries => throw _privateConstructorUsedError;

  /// Serializes this UserAddressDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAddressDataModelCopyWith<UserAddressDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressDataModelCopyWith<$Res> {
  factory $UserAddressDataModelCopyWith(UserAddressDataModel value,
          $Res Function(UserAddressDataModel) then) =
      _$UserAddressDataModelCopyWithImpl<$Res, UserAddressDataModel>;
  @useResult
  $Res call(
      {User user,
      Map<String, String> provinces,
      Map<String, String> cities,
      Map<String, String> areas,
      List<int> wards,
      Map<String, String> countries});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserAddressDataModelCopyWithImpl<$Res,
        $Val extends UserAddressDataModel>
    implements $UserAddressDataModelCopyWith<$Res> {
  _$UserAddressDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? provinces = null,
    Object? cities = null,
    Object? areas = null,
    Object? wards = null,
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      provinces: null == provinces
          ? _value.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      areas: null == areas
          ? _value.areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      wards: null == wards
          ? _value.wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<int>,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  /// Create a copy of UserAddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAddressDataModelImplCopyWith<$Res>
    implements $UserAddressDataModelCopyWith<$Res> {
  factory _$$UserAddressDataModelImplCopyWith(_$UserAddressDataModelImpl value,
          $Res Function(_$UserAddressDataModelImpl) then) =
      __$$UserAddressDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      Map<String, String> provinces,
      Map<String, String> cities,
      Map<String, String> areas,
      List<int> wards,
      Map<String, String> countries});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserAddressDataModelImplCopyWithImpl<$Res>
    extends _$UserAddressDataModelCopyWithImpl<$Res, _$UserAddressDataModelImpl>
    implements _$$UserAddressDataModelImplCopyWith<$Res> {
  __$$UserAddressDataModelImplCopyWithImpl(_$UserAddressDataModelImpl _value,
      $Res Function(_$UserAddressDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? provinces = null,
    Object? cities = null,
    Object? areas = null,
    Object? wards = null,
    Object? countries = null,
  }) {
    return _then(_$UserAddressDataModelImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      provinces: null == provinces
          ? _value._provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      areas: null == areas
          ? _value._areas
          : areas // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      wards: null == wards
          ? _value._wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<int>,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressDataModelImpl implements _UserAddressDataModel {
  const _$UserAddressDataModelImpl(
      {required this.user,
      final Map<String, String> provinces = const {},
      final Map<String, String> cities = const {},
      final Map<String, String> areas = const {},
      final List<int> wards = const [],
      final Map<String, String> countries = const {}})
      : _provinces = provinces,
        _cities = cities,
        _areas = areas,
        _wards = wards,
        _countries = countries;

  factory _$UserAddressDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressDataModelImplFromJson(json);

  @override
  final User user;
  final Map<String, String> _provinces;
  @override
  @JsonKey()
  Map<String, String> get provinces {
    if (_provinces is EqualUnmodifiableMapView) return _provinces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_provinces);
  }

  final Map<String, String> _cities;
  @override
  @JsonKey()
  Map<String, String> get cities {
    if (_cities is EqualUnmodifiableMapView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cities);
  }

  final Map<String, String> _areas;
  @override
  @JsonKey()
  Map<String, String> get areas {
    if (_areas is EqualUnmodifiableMapView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_areas);
  }

  final List<int> _wards;
  @override
  @JsonKey()
  List<int> get wards {
    if (_wards is EqualUnmodifiableListView) return _wards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wards);
  }

  final Map<String, String> _countries;
  @override
  @JsonKey()
  Map<String, String> get countries {
    if (_countries is EqualUnmodifiableMapView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_countries);
  }

  @override
  String toString() {
    return 'UserAddressDataModel(user: $user, provinces: $provinces, cities: $cities, areas: $areas, wards: $wards, countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressDataModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._provinces, _provinces) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            const DeepCollectionEquality().equals(other._wards, _wards) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_provinces),
      const DeepCollectionEquality().hash(_cities),
      const DeepCollectionEquality().hash(_areas),
      const DeepCollectionEquality().hash(_wards),
      const DeepCollectionEquality().hash(_countries));

  /// Create a copy of UserAddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressDataModelImplCopyWith<_$UserAddressDataModelImpl>
      get copyWith =>
          __$$UserAddressDataModelImplCopyWithImpl<_$UserAddressDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressDataModelImplToJson(
      this,
    );
  }
}

abstract class _UserAddressDataModel implements UserAddressDataModel {
  const factory _UserAddressDataModel(
      {required final User user,
      final Map<String, String> provinces,
      final Map<String, String> cities,
      final Map<String, String> areas,
      final List<int> wards,
      final Map<String, String> countries}) = _$UserAddressDataModelImpl;

  factory _UserAddressDataModel.fromJson(Map<String, dynamic> json) =
      _$UserAddressDataModelImpl.fromJson;

  @override
  User get user;
  @override
  Map<String, String> get provinces;
  @override
  Map<String, String> get cities;
  @override
  Map<String, String> get areas;
  @override
  List<int> get wards;
  @override
  Map<String, String> get countries;

  /// Create a copy of UserAddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAddressDataModelImplCopyWith<_$UserAddressDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_id')
  int? get addressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'international_address_id')
  int? get internationalAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int? get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int? get areaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ward_no')
  int? get wardNo => throw _privateConstructorUsedError;
  String get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'i_state')
  String? get iState => throw _privateConstructorUsedError;
  @JsonKey(name: 'i_suburb')
  String? get iSuburb => throw _privateConstructorUsedError;
  @JsonKey(name: 'i_postcode')
  String? get iPostcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'i_street')
  String? get iStreet => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String phone,
      @JsonKey(name: 'address_id') int? addressId,
      @JsonKey(name: 'international_address_id') int? internationalAddressId,
      @JsonKey(name: 'country_id') int? countryId,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'ward_no') int? wardNo,
      String street,
      @JsonKey(name: 'i_state') String? iState,
      @JsonKey(name: 'i_suburb') String? iSuburb,
      @JsonKey(name: 'i_postcode') String? iPostcode,
      @JsonKey(name: 'i_street') String? iStreet});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? addressId = freezed,
    Object? internationalAddressId = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? areaId = freezed,
    Object? wardNo = freezed,
    Object? street = null,
    Object? iState = freezed,
    Object? iSuburb = freezed,
    Object? iPostcode = freezed,
    Object? iStreet = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      internationalAddressId: freezed == internationalAddressId
          ? _value.internationalAddressId
          : internationalAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      wardNo: freezed == wardNo
          ? _value.wardNo
          : wardNo // ignore: cast_nullable_to_non_nullable
              as int?,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      iState: freezed == iState
          ? _value.iState
          : iState // ignore: cast_nullable_to_non_nullable
              as String?,
      iSuburb: freezed == iSuburb
          ? _value.iSuburb
          : iSuburb // ignore: cast_nullable_to_non_nullable
              as String?,
      iPostcode: freezed == iPostcode
          ? _value.iPostcode
          : iPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
      iStreet: freezed == iStreet
          ? _value.iStreet
          : iStreet // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      String phone,
      @JsonKey(name: 'address_id') int? addressId,
      @JsonKey(name: 'international_address_id') int? internationalAddressId,
      @JsonKey(name: 'country_id') int? countryId,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'area_id') int? areaId,
      @JsonKey(name: 'ward_no') int? wardNo,
      String street,
      @JsonKey(name: 'i_state') String? iState,
      @JsonKey(name: 'i_suburb') String? iSuburb,
      @JsonKey(name: 'i_postcode') String? iPostcode,
      @JsonKey(name: 'i_street') String? iStreet});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? addressId = freezed,
    Object? internationalAddressId = freezed,
    Object? countryId = freezed,
    Object? cityId = freezed,
    Object? areaId = freezed,
    Object? wardNo = freezed,
    Object? street = null,
    Object? iState = freezed,
    Object? iSuburb = freezed,
    Object? iPostcode = freezed,
    Object? iStreet = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      internationalAddressId: freezed == internationalAddressId
          ? _value.internationalAddressId
          : internationalAddressId // ignore: cast_nullable_to_non_nullable
              as int?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      areaId: freezed == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int?,
      wardNo: freezed == wardNo
          ? _value.wardNo
          : wardNo // ignore: cast_nullable_to_non_nullable
              as int?,
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      iState: freezed == iState
          ? _value.iState
          : iState // ignore: cast_nullable_to_non_nullable
              as String?,
      iSuburb: freezed == iSuburb
          ? _value.iSuburb
          : iSuburb // ignore: cast_nullable_to_non_nullable
              as String?,
      iPostcode: freezed == iPostcode
          ? _value.iPostcode
          : iPostcode // ignore: cast_nullable_to_non_nullable
              as String?,
      iStreet: freezed == iStreet
          ? _value.iStreet
          : iStreet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      @JsonKey(name: 'address_id') this.addressId,
      @JsonKey(name: 'international_address_id') this.internationalAddressId,
      @JsonKey(name: 'country_id') this.countryId,
      @JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'area_id') this.areaId,
      @JsonKey(name: 'ward_no') this.wardNo,
      required this.street,
      @JsonKey(name: 'i_state') this.iState,
      @JsonKey(name: 'i_suburb') this.iSuburb,
      @JsonKey(name: 'i_postcode') this.iPostcode,
      @JsonKey(name: 'i_street') this.iStreet});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  @JsonKey(name: 'address_id')
  final int? addressId;
  @override
  @JsonKey(name: 'international_address_id')
  final int? internationalAddressId;
  @override
  @JsonKey(name: 'country_id')
  final int? countryId;
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;
  @override
  @JsonKey(name: 'area_id')
  final int? areaId;
  @override
  @JsonKey(name: 'ward_no')
  final int? wardNo;
  @override
  final String street;
  @override
  @JsonKey(name: 'i_state')
  final String? iState;
  @override
  @JsonKey(name: 'i_suburb')
  final String? iSuburb;
  @override
  @JsonKey(name: 'i_postcode')
  final String? iPostcode;
  @override
  @JsonKey(name: 'i_street')
  final String? iStreet;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, addressId: $addressId, internationalAddressId: $internationalAddressId, countryId: $countryId, cityId: $cityId, areaId: $areaId, wardNo: $wardNo, street: $street, iState: $iState, iSuburb: $iSuburb, iPostcode: $iPostcode, iStreet: $iStreet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.internationalAddressId, internationalAddressId) ||
                other.internationalAddressId == internationalAddressId) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.wardNo, wardNo) || other.wardNo == wardNo) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.iState, iState) || other.iState == iState) &&
            (identical(other.iSuburb, iSuburb) || other.iSuburb == iSuburb) &&
            (identical(other.iPostcode, iPostcode) ||
                other.iPostcode == iPostcode) &&
            (identical(other.iStreet, iStreet) || other.iStreet == iStreet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      phone,
      addressId,
      internationalAddressId,
      countryId,
      cityId,
      areaId,
      wardNo,
      street,
      iState,
      iSuburb,
      iPostcode,
      iStreet);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String name,
      required final String email,
      required final String phone,
      @JsonKey(name: 'address_id') final int? addressId,
      @JsonKey(name: 'international_address_id')
      final int? internationalAddressId,
      @JsonKey(name: 'country_id') final int? countryId,
      @JsonKey(name: 'city_id') final int? cityId,
      @JsonKey(name: 'area_id') final int? areaId,
      @JsonKey(name: 'ward_no') final int? wardNo,
      required final String street,
      @JsonKey(name: 'i_state') final String? iState,
      @JsonKey(name: 'i_suburb') final String? iSuburb,
      @JsonKey(name: 'i_postcode') final String? iPostcode,
      @JsonKey(name: 'i_street') final String? iStreet}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(name: 'address_id')
  int? get addressId;
  @override
  @JsonKey(name: 'international_address_id')
  int? get internationalAddressId;
  @override
  @JsonKey(name: 'country_id')
  int? get countryId;
  @override
  @JsonKey(name: 'city_id')
  int? get cityId;
  @override
  @JsonKey(name: 'area_id')
  int? get areaId;
  @override
  @JsonKey(name: 'ward_no')
  int? get wardNo;
  @override
  String get street;
  @override
  @JsonKey(name: 'i_state')
  String? get iState;
  @override
  @JsonKey(name: 'i_suburb')
  String? get iSuburb;
  @override
  @JsonKey(name: 'i_postcode')
  String? get iPostcode;
  @override
  @JsonKey(name: 'i_street')
  String? get iStreet;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}