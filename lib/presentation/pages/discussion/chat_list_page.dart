import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:raise_hope/common/errors/api_exception.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/data/models/chat_info.dart';
import 'package:raise_hope/data/repositories/chat_repository.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/pages/discussion/components/chat_search_bar.dart';
import 'package:raise_hope/presentation/routes/app_router.dart';
import 'package:raise_hope/presentation/routes/app_router.gr.dart';

import 'components/chat_tile.dart';

@RoutePage()
class ChatListPage extends StatefulWidget {
  ChatListPage({super.key});

  final ChatRepository _chatRepository = locator<ChatRepository>();

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Raise Chat'),
        titleTextStyle: context.textTheme.titleLarge!,
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ChatSearchBar(),
          ),
          Expanded(
            child: StreamBuilder<dartz.Either<ApiException, List<ChatInfo>>>(
                stream: widget._chatRepository.getAllMissions().asStream(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }

                  final chats = snapshot.data!.getOrElse(() => []);
                  return SingleChildScrollView(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: chats.length,
                      itemBuilder: (context, index) => ChatTile(
                        chatInfo: chats[index],
                        onTap: () => locator<AppRouter>().push(const ChatRoute()),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
