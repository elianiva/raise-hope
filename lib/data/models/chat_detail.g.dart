// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDetailImpl _$$ChatDetailImplFromJson(Map<String, dynamic> json) =>
    _$ChatDetailImpl(
      id: json['id'] as String,
      senderName: json['senderName'] as String,
      senderImage: json['senderImage'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatDetailImplToJson(_$ChatDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderName': instance.senderName,
      'senderImage': instance.senderImage,
      'messages': instance.messages,
    };
