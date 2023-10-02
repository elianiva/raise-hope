import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/data/models/mission.dart';
import 'package:raise_hope/presentation/pages/home/components/filter_list.dart';
import 'package:raise_hope/presentation/pages/home/components/mission_list.dart';

class MissionSection extends StatefulWidget {
  const MissionSection({
    super.key,
    required this.title,
    this.onPressed,
    required this.filterItems,
    required this.missions,
  });

  final String title;
  final Function()? onPressed;
  final List<String> filterItems;
  final List<Mission> missions;

  @override
  State<MissionSection> createState() => _MissionSectionState();
}

class _MissionSectionState extends State<MissionSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
                    ),
              ),
              const Spacer(),
              TextButton(
                onPressed: widget.onPressed,
                child: Text(
                  'See All',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
        FilterList(
          items: widget.filterItems,
          onChanged: (value) {
            print(value);
          },
        ),
        20.verticalSpace,
        MissionList(missions: widget.missions),
      ],
    );
  }
}
