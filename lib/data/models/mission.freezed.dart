// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return _Mission.fromJson(json);
}

/// @nodoc
mixin _$Mission {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get targetVolunteer => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get typeOfHelp => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  Institution get institution => throw _privateConstructorUsedError;
  int get karmaReward => throw _privateConstructorUsedError;
  Point get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionCopyWith<Mission> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionCopyWith<$Res> {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) then) =
      _$MissionCopyWithImpl<$Res, Mission>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int targetVolunteer,
      DateTime startDate,
      DateTime endDate,
      String typeOfHelp,
      List<String> images,
      Institution institution,
      int karmaReward,
      Point location});

  $InstitutionCopyWith<$Res> get institution;
  $PointCopyWith<$Res> get location;
}

/// @nodoc
class _$MissionCopyWithImpl<$Res, $Val extends Mission>
    implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? targetVolunteer = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? typeOfHelp = null,
    Object? images = null,
    Object? institution = null,
    Object? karmaReward = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      targetVolunteer: null == targetVolunteer
          ? _value.targetVolunteer
          : targetVolunteer // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeOfHelp: null == typeOfHelp
          ? _value.typeOfHelp
          : typeOfHelp // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as Institution,
      karmaReward: null == karmaReward
          ? _value.karmaReward
          : karmaReward // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Point,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstitutionCopyWith<$Res> get institution {
    return $InstitutionCopyWith<$Res>(_value.institution, (value) {
      return _then(_value.copyWith(institution: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get location {
    return $PointCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MissionImplCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$$MissionImplCopyWith(
          _$MissionImpl value, $Res Function(_$MissionImpl) then) =
      __$$MissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      int targetVolunteer,
      DateTime startDate,
      DateTime endDate,
      String typeOfHelp,
      List<String> images,
      Institution institution,
      int karmaReward,
      Point location});

  @override
  $InstitutionCopyWith<$Res> get institution;
  @override
  $PointCopyWith<$Res> get location;
}

/// @nodoc
class __$$MissionImplCopyWithImpl<$Res>
    extends _$MissionCopyWithImpl<$Res, _$MissionImpl>
    implements _$$MissionImplCopyWith<$Res> {
  __$$MissionImplCopyWithImpl(
      _$MissionImpl _value, $Res Function(_$MissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? targetVolunteer = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? typeOfHelp = null,
    Object? images = null,
    Object? institution = null,
    Object? karmaReward = null,
    Object? location = null,
  }) {
    return _then(_$MissionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      targetVolunteer: null == targetVolunteer
          ? _value.targetVolunteer
          : targetVolunteer // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      typeOfHelp: null == typeOfHelp
          ? _value.typeOfHelp
          : typeOfHelp // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as Institution,
      karmaReward: null == karmaReward
          ? _value.karmaReward
          : karmaReward // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionImpl implements _Mission {
  const _$MissionImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.targetVolunteer,
      required this.startDate,
      required this.endDate,
      required this.typeOfHelp,
      required final List<String> images,
      required this.institution,
      required this.karmaReward,
      required this.location})
      : _images = images;

  factory _$MissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int targetVolunteer;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String typeOfHelp;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Institution institution;
  @override
  final int karmaReward;
  @override
  final Point location;

  @override
  String toString() {
    return 'Mission(id: $id, title: $title, description: $description, targetVolunteer: $targetVolunteer, startDate: $startDate, endDate: $endDate, typeOfHelp: $typeOfHelp, images: $images, institution: $institution, karmaReward: $karmaReward, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.targetVolunteer, targetVolunteer) ||
                other.targetVolunteer == targetVolunteer) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.typeOfHelp, typeOfHelp) ||
                other.typeOfHelp == typeOfHelp) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.karmaReward, karmaReward) ||
                other.karmaReward == karmaReward) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      targetVolunteer,
      startDate,
      endDate,
      typeOfHelp,
      const DeepCollectionEquality().hash(_images),
      institution,
      karmaReward,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionImplCopyWith<_$MissionImpl> get copyWith =>
      __$$MissionImplCopyWithImpl<_$MissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionImplToJson(
      this,
    );
  }
}

abstract class _Mission implements Mission {
  const factory _Mission(
      {required final String id,
      required final String title,
      required final String description,
      required final int targetVolunteer,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String typeOfHelp,
      required final List<String> images,
      required final Institution institution,
      required final int karmaReward,
      required final Point location}) = _$MissionImpl;

  factory _Mission.fromJson(Map<String, dynamic> json) = _$MissionImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get targetVolunteer;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get typeOfHelp;
  @override
  List<String> get images;
  @override
  Institution get institution;
  @override
  int get karmaReward;
  @override
  Point get location;
  @override
  @JsonKey(ignore: true)
  _$$MissionImplCopyWith<_$MissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
