import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.g.dart';
part 'chat.freezed.dart';

@freezed
class Chat with _$Chat {
  const Chat._();

  const factory Chat({
    required String id,
    required String senderName,
    required String senderImage,
    required int unreadCount,
    required String lastChat,
    required DateTime timestamp,
  }) = _Chat;

  bool get hasUnread => unreadCount > 0;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
