import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/presentation/components/card/custom_card.dart';

class MyMissionCard extends StatelessWidget {
  int value;
  String title;
  String subtitle;
  Color color;

  MyMissionCard({
    super.key,
    required this.value,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value.toString(),
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    fontWeightDelta: 2,
                  ),
            ),
            4.verticalSpace,
            Text(
              title,
              style: Theme.of(context).textTheme.labelSmall!.apply(
                    fontWeightDelta: 2,
                  ),
            ),
            2.verticalSpace,
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelSmall!.apply(
                    fontWeightDelta: 2,
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                  ),
            ),
            8.verticalSpace,
            // make sure to use intrinsic height
            const Spacer(),
            Container(
              width: double.infinity,
              height: 4,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
