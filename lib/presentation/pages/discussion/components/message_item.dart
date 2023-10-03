import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/data/models/message.dart';
import 'package:raise_hope/presentation/pages/discussion/components/message_reply.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({
    super.key,
    required this.message,
    required this.senderName,
  });

  final Message message;
  final String senderName;

  @override
  Widget build(BuildContext context) {
    final sentByMe = message.senderId == "user";
    final boxColor = sentByMe ? context.colorScheme.primary : context.colorScheme.surface;
    final iconColor = sentByMe ? context.colorScheme.onPrimary : context.colorScheme.onBackground.withOpacity(0.5);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: sentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: context.width * 0.7,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: sentByMe
                  ? BorderRadius.only(
                      topLeft: 16.circular,
                      topRight: 16.circular,
                      bottomLeft: 16.circular,
                    )
                  : BorderRadius.only(
                      topLeft: 16.circular,
                      topRight: 16.circular,
                      bottomRight: 16.circular,
                    ),
            ),
            child: Column(
              crossAxisAlignment: sentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                if (message.replyTo != null) ...[
                  MessageReply(message: message, senderName: senderName),
                  8.verticalSpace,
                ],
                Text(
                  message.content,
                  style: TextStyle(
                    color: sentByMe ? context.colorScheme.onPrimary : context.colorScheme.onBackground,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      DateFormat("h:mm a").format(message.timestamp),
                      style: TextStyle(
                        color: iconColor,
                        fontSize: 12,
                      ),
                    ),
                    4.horizontalSpace,
                    Icon(
                      Icons.circle,
                      size: 2,
                      color: iconColor,
                    ),
                    4.horizontalSpace,
                    if (message.status == MessageStatus.read) ...[
                      Icon(Icons.check_circle, color: iconColor, size: 12.sp),
                    ]
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
