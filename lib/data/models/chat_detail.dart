import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raise_hope/data/models/message.dart';

part 'chat_detail.freezed.dart';
part 'chat_detail.g.dart';

@freezed
class ChatDetail with _$ChatDetail {
  const factory ChatDetail({
    required String id,
    required String senderName,
    required String senderImage,
    required List<Message> messages,
  }) = _ChatDetail;

  factory ChatDetail.fromJson(Map<String, dynamic> json) => _$ChatDetailFromJson(json);
}
