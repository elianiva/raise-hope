import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_info.g.dart';
part 'chat_info.freezed.dart';

@freezed
class ChatInfo with _$ChatInfo {
  const ChatInfo._();

  const factory ChatInfo({
    required String id,
    required String senderName,
    required String senderImage,
    required int unreadCount,
    required String lastChat,
  }) = _ChatInfo;

  bool get hasUnread => unreadCount > 0;

  factory ChatInfo.fromJson(Map<String, dynamic> json) => _$ChatInfoFromJson(json);
}
