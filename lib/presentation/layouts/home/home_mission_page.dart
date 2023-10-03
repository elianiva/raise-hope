import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/data/repositories/mission_repository.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/pages/home/components/mission_section.dart';

@RoutePage()
class HomeMissionPage extends StatefulWidget {
  HomeMissionPage({super.key});

  final MissionRepository _missionRepository = locator<MissionRepository>();

  @override
  State<HomeMissionPage> createState() => _HomeMissionPageState();
}

class _HomeMissionPageState extends State<HomeMissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Missions'),
        titleTextStyle: context.textTheme.titleLarge,
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MissionSection(
              title: "Bookmarked",
              filterItems: const ["all", "fund-raising", "helping-hand", "health"],
              missions: widget._missionRepository.missions.take(3).toList(),
              useLargeTitle: true,
            ),
            16.verticalSpace,
            MissionSection(
              title: "On Going",
              filterItems: const ["all", "health", "helping-hand"],
              missions: widget._missionRepository.missions.skip(1).take(2).toList(),
              useLargeTitle: true,
            ),
            16.verticalSpace,
            MissionSection(
              title: "Finished",
              filterItems: const ["all", "education"],
              missions: widget._missionRepository.missions.skip(3).take(1).toList(),
              useLargeTitle: true,
            ),
            32.verticalSpace,
          ],
        ),
      ),
    );
  }
}
