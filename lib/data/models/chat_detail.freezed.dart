// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatDetail _$ChatDetailFromJson(Map<String, dynamic> json) {
  return _ChatDetail.fromJson(json);
}

/// @nodoc
mixin _$ChatDetail {
  String get id => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;
  String get senderImage => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDetailCopyWith<ChatDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailCopyWith<$Res> {
  factory $ChatDetailCopyWith(
          ChatDetail value, $Res Function(ChatDetail) then) =
      _$ChatDetailCopyWithImpl<$Res, ChatDetail>;
  @useResult
  $Res call(
      {String id,
      String senderName,
      String senderImage,
      List<Message> messages});
}

/// @nodoc
class _$ChatDetailCopyWithImpl<$Res, $Val extends ChatDetail>
    implements $ChatDetailCopyWith<$Res> {
  _$ChatDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderName = null,
    Object? senderImage = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderImage: null == senderImage
          ? _value.senderImage
          : senderImage // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDetailImplCopyWith<$Res>
    implements $ChatDetailCopyWith<$Res> {
  factory _$$ChatDetailImplCopyWith(
          _$ChatDetailImpl value, $Res Function(_$ChatDetailImpl) then) =
      __$$ChatDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String senderName,
      String senderImage,
      List<Message> messages});
}

/// @nodoc
class __$$ChatDetailImplCopyWithImpl<$Res>
    extends _$ChatDetailCopyWithImpl<$Res, _$ChatDetailImpl>
    implements _$$ChatDetailImplCopyWith<$Res> {
  __$$ChatDetailImplCopyWithImpl(
      _$ChatDetailImpl _value, $Res Function(_$ChatDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderName = null,
    Object? senderImage = null,
    Object? messages = null,
  }) {
    return _then(_$ChatDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderImage: null == senderImage
          ? _value.senderImage
          : senderImage // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatDetailImpl implements _ChatDetail {
  const _$ChatDetailImpl(
      {required this.id,
      required this.senderName,
      required this.senderImage,
      required final List<Message> messages})
      : _messages = messages;

  factory _$ChatDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDetailImplFromJson(json);

  @override
  final String id;
  @override
  final String senderName;
  @override
  final String senderImage;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatDetail(id: $id, senderName: $senderName, senderImage: $senderImage, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderImage, senderImage) ||
                other.senderImage == senderImage) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderName, senderImage,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailImplCopyWith<_$ChatDetailImpl> get copyWith =>
      __$$ChatDetailImplCopyWithImpl<_$ChatDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatDetailImplToJson(
      this,
    );
  }
}

abstract class _ChatDetail implements ChatDetail {
  const factory _ChatDetail(
      {required final String id,
      required final String senderName,
      required final String senderImage,
      required final List<Message> messages}) = _$ChatDetailImpl;

  factory _ChatDetail.fromJson(Map<String, dynamic> json) =
      _$ChatDetailImpl.fromJson;

  @override
  String get id;
  @override
  String get senderName;
  @override
  String get senderImage;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ChatDetailImplCopyWith<_$ChatDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
