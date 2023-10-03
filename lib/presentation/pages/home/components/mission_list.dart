import 'dart:math';

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/data/models/mission.dart';
import 'package:raise_hope/injection.dart';
import 'package:raise_hope/presentation/components/card/mission_card.dart';
import 'package:raise_hope/presentation/routes/app_router.dart';
import 'package:raise_hope/presentation/routes/app_router.gr.dart';

class MissionList extends StatefulWidget {
  const MissionList({super.key, required this.missions});

  final List<Mission> missions;

  @override
  State<MissionList> createState() => _MissionListState();
}

class _MissionListState extends State<MissionList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: widget.missions.length,
        clipBehavior: Clip.none,
        itemBuilder: (context, index) => SizedBox(
          width: 160,
          child: MissionCard(
            heroTag: "${widget.missions[index].id}-${Random().nextInt(100)}",
            title: widget.missions[index].title,
            karmaReward: widget.missions[index].karmaReward,
            coverImage: widget.missions[index].images.first,
            onTap: (tag) {
              locator<AppRouter>().push(
                MissionDetailRoute(id: widget.missions[index].id, heroTag: tag),
              );
            },
          ),
        ),
        separatorBuilder: (_, __) => 16.horizontalSpace,
      ),
    );
  }
}
