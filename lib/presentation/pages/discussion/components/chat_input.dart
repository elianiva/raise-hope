import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        border: Border(
          top: BorderSide(
            color: context.colorScheme.onBackground.withOpacity(0.12),
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                filled: true,
                fillColor: context.colorScheme.onBackground.withOpacity(0.1),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(
                  color: context.colorScheme.onBackground.withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: TextStyle(
                color: context.colorScheme.onBackground,
                fontSize: 14,
              ),
              minLines: 1,
              maxLines: 1,
            ),
          ),
          8.horizontalSpace,
          IconButton(
            onPressed: () {},
            // papper plane
            icon: Icon(
              Icons.send_rounded,
              color: context.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
