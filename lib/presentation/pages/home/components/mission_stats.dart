import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/presentation/pages/mission/components/my_mission_card.dart';

class MissionStats extends StatelessWidget {
  const MissionStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: MyMissionCard(
              value: 1,
              title: 'Mission',
              subtitle: 'On Going!',
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          16.horizontalSpace,
          const Expanded(
            child: MyMissionCard(
              value: 5,
              title: 'Area',
              subtitle: 'You\'ve helped!',
              color: Color(0xFFF19700),
            ),
          ),
          16.horizontalSpace,
          const Expanded(
            child: MyMissionCard(
              value: 7,
              title: 'Mission Plan',
              subtitle: 'Planned!',
              color: Color(0xFF006E1C),
            ),
          ),
        ],
      ),
    );
  }
}
