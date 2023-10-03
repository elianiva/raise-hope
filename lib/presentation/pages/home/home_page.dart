import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/context_extension.dart';
import 'package:raise_hope/presentation/routes/app_router.gr.dart';

import 'components/app_drawer.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeMainRoute(),
        HomeMissionRoute(),
        ChatListRoute(),
      ],
      builder: (ctx, child) {
        final tabsRouter = AutoTabsRouter.of(ctx);
        return Scaffold(
          backgroundColor: Colors.white,
          key: _key,
          drawer: const AppDrawer(),
          body: child,
          bottomNavigationBar: NavigationBar(
            backgroundColor: Colors.white,
            indicatorColor: context.colorScheme.primary,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                selectedIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.integration_instructions_outlined),
                label: "Mission",
                selectedIcon: Icon(
                  Icons.integration_instructions,
                  color: Colors.white,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.chat_bubble_outline),
                label: "Discussion",
                selectedIcon: Icon(
                  Icons.chat_bubble,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
