import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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

  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.builder(
      routes: const [
        HomeDashboardRoute(),
        HomeMissionRoute(),
        HomeDiscussionRoute(),
      ],
      builder: (ctx, child, controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          key: _key,
          drawer: const AppDrawer(),
          body: child[controller.activeIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex: controller.activeIndex,
            onDestinationSelected: controller.setActiveIndex,
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
