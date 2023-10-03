import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/data/repositories/chat_repository.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/pages/discussion/components/chat_input.dart';
import 'package:raise_hope/presentation/pages/discussion/components/message_item.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  ChatPage({
    super.key,
    required this.chatId,
  });

  final String chatId;
  final ChatRepository _chatRepository = locator<ChatRepository>();

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final conversation = widget._chatRepository.chatDetail.firstWhere((chat) => chat.id == widget.chatId);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: conversation.senderImage,
                width: 32,
                height: 32,
                fit: BoxFit.cover,
              ),
            ),
            8.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  conversation.senderName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "Recently Online",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
        titleTextStyle: context.textTheme.titleMedium!.apply(
          fontWeightDelta: 2,
        ),
        titleSpacing: 0,
        surfaceTintColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: context.colorScheme.primary.withOpacity(0.1),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemCount: conversation.messages.length,
                itemBuilder: (context, index) => MessageItem(
                  message: conversation.messages[index],
                  senderName: conversation.senderName,
                ),
              ),
            ),
          ),
          const ChatInput(),
        ],
      ),
    );
  }
}
