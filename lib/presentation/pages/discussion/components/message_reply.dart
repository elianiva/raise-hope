import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/data/models/message.dart';

class MessageReply extends StatelessWidget {
  const MessageReply({
    super.key,
    required this.message,
    required this.senderName,
  });

  final Message message;
  final String senderName;

  @override
  Widget build(BuildContext context) {
    final sentByMe = message.senderId == "user";
    final iconColor = sentByMe ? context.colorScheme.onPrimary : context.colorScheme.onBackground.withOpacity(0.5);

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.colorScheme.onBackground.withOpacity(0.1),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sentByMe ? "You" : senderName,
                        style: TextStyle(
                          color: iconColor,
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      4.verticalSpace,
                      Text(
                        message.content,
                        style: TextStyle(
                          color: iconColor,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
