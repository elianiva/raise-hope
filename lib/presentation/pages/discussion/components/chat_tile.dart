import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/data/models/chat_info.dart';
import 'package:relative_time/relative_time.dart';

class ChatTile extends StatelessWidget {
  final ChatInfo chatInfo;
  final VoidCallback? onTap;

  const ChatTile({
    super.key,
    this.onTap,
    required this.chatInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 6.0,
            horizontal: 16,
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: CachedNetworkImage(
                        imageUrl: chatInfo.senderImage,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (chatInfo.hasUnread)
                      Positioned(
                        top: -2,
                        right: -2,
                        child: Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: context.colorScheme.background,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                16.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              chatInfo.senderName,
                              style: context.textTheme.titleSmall!.apply(
                                fontWeightDelta: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      4.verticalSpace,
                      Text(
                        chatInfo.lastChat,
                        style: context.textTheme.labelSmall!
                            .apply(
                              color: context.colorScheme.onSurface.withOpacity(0.6),
                            )
                            .copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
                16.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    8.verticalSpace,
                    Text(
                      RelativeTime.locale(const Locale("en")).format(chatInfo.timestamp),
                      style: context.textTheme.labelSmall!.apply(
                        color: context.colorScheme.onSurface.withOpacity(0.6),
                      ),
                    ),
                    const Spacer(),
                    if (chatInfo.hasUnread)
                      Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          color: context.colorScheme.primary.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: FittedBox(
                            child: Text(
                              chatInfo.unreadCount.toString(),
                              style: context.textTheme.labelSmall!.apply(
                                color: context.colorScheme.primary,
                                fontWeightDelta: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
