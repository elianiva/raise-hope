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
        const HomeMissionRoute(),
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
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
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
                icon: Icon(Icons.book_outlined),
                label: "Mission",
                selectedIcon: Icon(
                  Icons.book,
                  color: Colors.white,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.people_outline),
                label: "Discussion",
                selectedIcon: Icon(
                  Icons.people,
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
