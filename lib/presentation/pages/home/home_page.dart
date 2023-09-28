import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/presentation/routes/app_router.dart';

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
      routes: const [
        // HomeMainRoute(),
        HomeMissionRoute(),
        HomeDiscussionRoute(),
      ],
      builder: (ctx, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          backgroundColor: Colors.white,
          key: _key,
          drawer: const AppDrawer(),
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.book), label: "Mission"),
              NavigationDestination(icon: Icon(Icons.people), label: "Discussion"),
            ],
          ),
        );
      },
    );
  }
}
