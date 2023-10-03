import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

enum MessageStatus {
  read,
  sent,
  sending,
}

@freezed
class Message with _$Message {
  const factory Message({
    required String id,
    required String content,
    required String senderId,
    required DateTime timestamp,
    required Message? replyTo,
    required MessageStatus status,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}
