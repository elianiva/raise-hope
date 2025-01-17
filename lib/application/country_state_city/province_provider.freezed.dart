// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProvinceFamily {
  Country? get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProvinceFamilyCopyWith<ProvinceFamily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceFamilyCopyWith<$Res> {
  factory $ProvinceFamilyCopyWith(
          ProvinceFamily value, $Res Function(ProvinceFamily) then) =
      _$ProvinceFamilyCopyWithImpl<$Res, ProvinceFamily>;
  @useResult
  $Res call({Country? country});

  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$ProvinceFamilyCopyWithImpl<$Res, $Val extends ProvinceFamily>
    implements $ProvinceFamilyCopyWith<$Res> {
  _$ProvinceFamilyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProvinceFamilyImplCopyWith<$Res>
    implements $ProvinceFamilyCopyWith<$Res> {
  factory _$$ProvinceFamilyImplCopyWith(_$ProvinceFamilyImpl value,
          $Res Function(_$ProvinceFamilyImpl) then) =
      __$$ProvinceFamilyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Country? country});

  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$$ProvinceFamilyImplCopyWithImpl<$Res>
    extends _$ProvinceFamilyCopyWithImpl<$Res, _$ProvinceFamilyImpl>
    implements _$$ProvinceFamilyImplCopyWith<$Res> {
  __$$ProvinceFamilyImplCopyWithImpl(
      _$ProvinceFamilyImpl _value, $Res Function(_$ProvinceFamilyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_$ProvinceFamilyImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }
}

/// @nodoc

class _$ProvinceFamilyImpl implements _ProvinceFamily {
  const _$ProvinceFamilyImpl({required this.country});

  @override
  final Country? country;

  @override
  String toString() {
    return 'ProvinceFamily(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceFamilyImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceFamilyImplCopyWith<_$ProvinceFamilyImpl> get copyWith =>
      __$$ProvinceFamilyImplCopyWithImpl<_$ProvinceFamilyImpl>(
          this, _$identity);
}

abstract class _ProvinceFamily implements ProvinceFamily {
  const factory _ProvinceFamily({required final Country? country}) =
      _$ProvinceFamilyImpl;

  @override
  Country? get country;
  @override
  @JsonKey(ignore: true)
  _$$ProvinceFamilyImplCopyWith<_$ProvinceFamilyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
