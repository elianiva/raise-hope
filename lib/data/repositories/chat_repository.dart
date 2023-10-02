import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:raise_hope/common/errors/api_exception.dart';
import 'package:raise_hope/data/models/chat_info.dart';

@injectable
class ChatRepository {
  final List<ChatInfo> _chats = [
    const ChatInfo(
      id: "mission-1",
      senderName: "Rumah Anak Yatim Piatu",
      senderImage: "https://picsum.photos/seed/1/48",
      lastChat: "Makasih banyak ya kak!",
      unreadCount: 3,
    ),
    const ChatInfo(
      id: "mission-2",
      senderName: "Bantuan Gempa Lombok",
      senderImage: "https://picsum.photos/seed/2/48",
      lastChat: "Belum ada perkembangan kak",
      unreadCount: 0,
    ),
    const ChatInfo(
      id: "mission-3",
      senderName: "Institut Pendidikan Anak Bangsa",
      senderImage: "https://picsum.photos/seed/3/48",
      lastChat: "Kalau begitu kita lanjutkan besok ya kak",
      unreadCount: 4,
    ),
  ];
  final FirebaseFunctions _functions;

  ChatRepository(this._functions);

  Future<Either<ApiException, List<ChatInfo>>> getAllMissions() async {
    try {
      // TODO(elianiva): enable this later when we've got the integration working
      // final callable = _functions.httpsCallable('getAllMissions');
      // final result = await callable.call();

      // if (result.data['error'] != null) {
      //   return left(ApiException.unAuthorized(result.data['error']));
      // }

      return right(_chats);
    } on Exception catch (e) {
      return left(ApiException.unAuthorized(e.toString()));
    }
  }
}
