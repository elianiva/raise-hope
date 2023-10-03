// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      senderId: json['senderId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      replyTo: json['replyTo'] == null
          ? null
          : Message.fromJson(json['replyTo'] as Map<String, dynamic>),
      status: $enumDecode(_$MessageStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'senderId': instance.senderId,
      'timestamp': instance.timestamp.toIso8601String(),
      'replyTo': instance.replyTo,
      'status': _$MessageStatusEnumMap[instance.status]!,
    };

const _$MessageStatusEnumMap = {
  MessageStatus.read: 'read',
  MessageStatus.sent: 'sent',
  MessageStatus.sending: 'sending',
};
