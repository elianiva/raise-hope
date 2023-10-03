import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/components/app_bar/simple_app_bar.dart';
import 'package:raise_hope/presentation/routes/app_router.dart';
import 'package:raise_hope/presentation/routes/app_router.gr.dart';

import 'drawer_list_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final safeArea = MediaQuery.of(context).padding;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Drawer(
        width: context.width,
        backgroundColor: context.colorScheme.background,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: (safeArea.top + 24).verticalSpace),
            const SliverToBoxAdapter(
              child: SimpleAppBar(title: 'Profile'),
            ),
            SliverToBoxAdapter(child: 24.verticalSpace),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: StreamBuilder(
                  stream: locator<FirebaseAuth>().userChanges(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Row(
                        children: [
                          if (snapshot.data?.photoURL != null)
                            Hero(
                              tag: 'profile-picture',
                              child: CircleAvatar(
                                radius: 24,
                                backgroundImage: CachedNetworkImageProvider(
                                  snapshot.data!.photoURL!,
                                ),
                              ),
                            )
                          else
                            CircleAvatar(
                              radius: 24,
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
                                ),
                                Text(
                                  snapshot.data?.email ?? "",
                                  style: context.textTheme.bodySmall!.copyWith(
                                    color: context.colorScheme.onSurface.withOpacity(
                                      0.75,
                                    ),
                                  ),
                                ),
                              ],
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
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  24.verticalSpace,
                  DrawerListItem(
                    label: 'Account',
                    icon: Icons.person_outline_rounded,
                    onTap: () => locator<AppRouter>().push(const ProfileRoute()),
                  ),
                  const DrawerListItem(
                    label: 'Request Help',
                    icon: Icons.notes_rounded,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Raise Hope - v1.0.0"),
                          TextButton.icon(
                            onPressed: () {
                              locator<FirebaseAuth>().signOut();
                              locator<AppRouter>().replace(const OnboardingRoute());
                            },
                            label: const Icon(CommunityMaterialIcons.logout),
                            icon: const Text("Log Out"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
