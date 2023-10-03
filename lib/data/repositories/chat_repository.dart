import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:raise_hope/common/errors/api_exception.dart';
import 'package:raise_hope/data/models/chat_detail.dart';
import 'package:raise_hope/data/models/chat_info.dart';
import 'package:raise_hope/data/models/message.dart';

@injectable
class ChatRepository {
  final List<ChatInfo> chats = [
    ChatInfo(
      id: "chat-1",
      senderName: "Rumah Anak Yatim Piatu",
      senderImage: "https://picsum.photos/seed/1/48",
      lastChat: "Makasih banyak ya kak!",
      unreadCount: 3,
      timestamp: DateTime(2023, 9, 15),
    ),
    ChatInfo(
      id: "chat-2",
      senderName: "Bantuan Gempa Lombok",
      senderImage: "https://picsum.photos/seed/2/48",
      lastChat: "Baik kak, terima kasih ya..",
      unreadCount: 0,
      timestamp: DateTime(2023, 10, 3, 4, 37, 15),
    ),
    ChatInfo(
      id: "chat-3",
      senderName: "Institut Pendidikan Anak Bangsa",
      senderImage: "https://picsum.photos/seed/3/48",
      lastChat: "Kalau begitu kita lanjutkan besok ya kak",
      unreadCount: 4,
      timestamp: DateTime(2023, 10, 1),
    ),
  ];
  final List<ChatDetail> chatDetail = [
    ChatDetail(
      id: "chat-1",
      senderName: "Bantuan Gempa Lombok",
      senderImage: "https://picsum.photos/seed/2/48",
      messages: [
        Message(
          id: "m1",
          senderId: "non-user",
          content: "Halo kak! Sudah aku kirim ya rewardnya.",
          timestamp: DateTime(2023, 10, 3, 4, 30, 12),
          replyTo: null,
          status: MessageStatus.read,
        ),
        Message(
          id: "m2",
          senderId: "user",
          content: "Baik kak, terima kasih ya..",
          timestamp: DateTime(2023, 10, 3, 4, 37, 15),
          replyTo: Message(
            id: "m1",
            senderId: "non-user",
            content: "Halo kak! Sudah aku kirim ya rewardnya.",
            timestamp: DateTime(2023, 10, 3, 4, 30, 12),
            replyTo: null,
            status: MessageStatus.read,
          ),
          status: MessageStatus.read,
        ),
      ],
    ),
    ChatDetail(
      id: "chat-2",
      senderName: "Bantuan Gempa Lombok",
      senderImage: "https://picsum.photos/seed/2/48",
      messages: [
        Message(
          id: "m1",
          senderId: "non-user",
          content: "Halo kak! Sudah aku kirim ya rewardnya.",
          timestamp: DateTime(2023, 10, 3, 4, 30, 12),
          replyTo: null,
          status: MessageStatus.read,
        ),
        Message(
          id: "m2",
          senderId: "user",
          content: "Baik kak, terima kasih ya..",
          timestamp: DateTime(2023, 10, 3, 4, 37, 15),
          replyTo: Message(
            id: "m1",
            senderId: "non-user",
            content: "Halo kak! Sudah aku kirim ya rewardnya.",
            timestamp: DateTime(2023, 10, 3, 4, 30, 12),
            replyTo: null,
            status: MessageStatus.read,
          ),
          status: MessageStatus.read,
        ),
      ],
    ),
    ChatDetail(
      id: "chat-3",
      senderName: "Bantuan Gempa Lombok",
      senderImage: "https://picsum.photos/seed/2/48",
      messages: [
        Message(
          id: "m1",
          senderId: "non-user",
          content: "Halo kak! Sudah aku kirim ya rewardnya.",
          timestamp: DateTime(2023, 10, 3, 4, 30, 12),
          replyTo: null,
          status: MessageStatus.read,
        ),
        Message(
          id: "m2",
          senderId: "user",
          content: "Baik kak, terima kasih ya..",
          timestamp: DateTime(2023, 10, 3, 4, 37, 15),
          replyTo: Message(
            id: "m1",
            senderId: "non-user",
            content: "Halo kak! Sudah aku kirim ya rewardnya.",
            timestamp: DateTime(2023, 10, 3, 4, 30, 12),
            replyTo: null,
            status: MessageStatus.read,
          ),
          status: MessageStatus.read,
        ),
      ],
    ),
  ];

  final FirebaseFunctions _functions;

  ChatRepository(this._functions);

  Future<Either<ApiException, List<ChatInfo>>> getAllChats() async {
    try {
      // TODO(elianiva): enable this later when we've got the integration working
      // final callable = _functions.httpsCallable('getAllMissions');
      // final result = await callable.call();

      // if (result.data['error'] != null) {
      //   return left(ApiException.unAuthorized(result.data['error']));
      // }

      return right(chats);
    } on Exception catch (e) {
      return left(ApiException.unAuthorized(e.toString()));
    }
  }
}
