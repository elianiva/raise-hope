// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatInfo _$ChatInfoFromJson(Map<String, dynamic> json) {
  return _ChatInfo.fromJson(json);
}

/// @nodoc
mixin _$ChatInfo {
  String get id => throw _privateConstructorUsedError;
  String get senderName => throw _privateConstructorUsedError;
  String get senderImage => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  String get lastChat => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatInfoCopyWith<ChatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatInfoCopyWith<$Res> {
  factory $ChatInfoCopyWith(ChatInfo value, $Res Function(ChatInfo) then) =
      _$ChatInfoCopyWithImpl<$Res, ChatInfo>;
  @useResult
  $Res call(
      {String id,
      String senderName,
      String senderImage,
      int unreadCount,
      String lastChat,
      DateTime timestamp});
}

/// @nodoc
class _$ChatInfoCopyWithImpl<$Res, $Val extends ChatInfo>
    implements $ChatInfoCopyWith<$Res> {
  _$ChatInfoCopyWithImpl(this._value, this._then);

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
    Object? unreadCount = null,
    Object? lastChat = null,
    Object? timestamp = null,
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
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastChat: null == lastChat
          ? _value.lastChat
          : lastChat // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatInfoImplCopyWith<$Res>
    implements $ChatInfoCopyWith<$Res> {
  factory _$$ChatInfoImplCopyWith(
          _$ChatInfoImpl value, $Res Function(_$ChatInfoImpl) then) =
      __$$ChatInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String senderName,
      String senderImage,
      int unreadCount,
      String lastChat,
      DateTime timestamp});
}

/// @nodoc
class __$$ChatInfoImplCopyWithImpl<$Res>
    extends _$ChatInfoCopyWithImpl<$Res, _$ChatInfoImpl>
    implements _$$ChatInfoImplCopyWith<$Res> {
  __$$ChatInfoImplCopyWithImpl(
      _$ChatInfoImpl _value, $Res Function(_$ChatInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? senderName = null,
    Object? senderImage = null,
    Object? unreadCount = null,
    Object? lastChat = null,
    Object? timestamp = null,
  }) {
    return _then(_$ChatInfoImpl(
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
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastChat: null == lastChat
          ? _value.lastChat
          : lastChat // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatInfoImpl extends _ChatInfo {
  const _$ChatInfoImpl(
      {required this.id,
      required this.senderName,
      required this.senderImage,
      required this.unreadCount,
      required this.lastChat,
      required this.timestamp})
      : super._();

  factory _$ChatInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String senderName;
  @override
  final String senderImage;
  @override
  final int unreadCount;
  @override
  final String lastChat;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'ChatInfo(id: $id, senderName: $senderName, senderImage: $senderImage, unreadCount: $unreadCount, lastChat: $lastChat, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderImage, senderImage) ||
                other.senderImage == senderImage) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.lastChat, lastChat) ||
                other.lastChat == lastChat) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderName, senderImage,
      unreadCount, lastChat, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatInfoImplCopyWith<_$ChatInfoImpl> get copyWith =>
      __$$ChatInfoImplCopyWithImpl<_$ChatInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatInfoImplToJson(
      this,
    );
  }
}

abstract class _ChatInfo extends ChatInfo {
  const factory _ChatInfo(
      {required final String id,
      required final String senderName,
      required final String senderImage,
      required final int unreadCount,
      required final String lastChat,
      required final DateTime timestamp}) = _$ChatInfoImpl;
  const _ChatInfo._() : super._();

  factory _ChatInfo.fromJson(Map<String, dynamic> json) =
      _$ChatInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get senderName;
  @override
  String get senderImage;
  @override
  int get unreadCount;
  @override
  String get lastChat;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ChatInfoImplCopyWith<_$ChatInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
