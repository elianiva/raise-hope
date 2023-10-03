// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      id: json['id'] as String,
      senderName: json['senderName'] as String,
      senderImage: json['senderImage'] as String,
      unreadCount: json['unreadCount'] as int,
      lastChat: json['lastChat'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderName': instance.senderName,
      'senderImage': instance.senderImage,
      'unreadCount': instance.unreadCount,
      'lastChat': instance.lastChat,
      'timestamp': instance.timestamp.toIso8601String(),
    };
