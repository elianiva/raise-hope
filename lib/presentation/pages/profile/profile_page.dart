import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/components/app_bar/simple_app_bar.dart';
import 'package:raise_hope/presentation/components/card/karma_progress_card.dart';
import 'package:raise_hope/presentation/routes/app_router.dart';
import 'package:raise_hope/presentation/routes/app_router.gr.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final safeArea = MediaQuery.of(context).padding;

    return Scaffold(
        body: Column(
      children: [
        (safeArea.top + 24).verticalSpace,
        const SimpleAppBar(title: 'Profile'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: StreamBuilder(
            stream: locator<FirebaseAuth>().userChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (snapshot.data?.photoURL != null)
                      Hero(
                        tag: 'profile-picture',
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: context.colorScheme.onSurface.withOpacity(0.05),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 76 / 2,
                            backgroundImage: CachedNetworkImageProvider(
                              snapshot.data!.photoURL!,
                            ),
                          ),
                        ),
                      )
                    else
                      CircleAvatar(
                        radius: 76 / 2,
                        backgroundColor: context.colorScheme.background,
                        child: const Icon(Icons.person),
                      ),
                    20.horizontalSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data?.displayName ?? "",
                            style: context.textTheme.bodyMedium!.apply(
                              fontWeightDelta: 2,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            snapshot.data?.email ?? "",
                            style: context.textTheme.bodySmall!.copyWith(
                              color: context.colorScheme.onSurface.withOpacity(
                                0.75,
                              ),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    8.horizontalSpace,
                    SizedBox(
                      width: 100,
                      child: FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                        child: const Text("Edit"),
                      ),
                    ),
                  ],
                );
              } else {
                return const Text("No user");
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GestureDetector(
            child: const KarmaProgressCard(
              currentKarmaLevel: 3,
              karmaToNextLevel: 250,
            ),
            onTap: () => locator<AppRouter>().push(const KarmaMainRoute()),
          ),
        ),
      ],
    ));
  }
}
