import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:raise_hope/common/extensions/extensions.dart';
import 'package:raise_hope/presentation/components/progress_bar/rounded_progress_bar.dart';

import 'custom_card.dart';

class KarmaProgressCard extends StatelessWidget {
  const KarmaProgressCard({
    super.key,
    required this.karmaToNextLevel,
    required this.currentKarmaLevel,
  });

  final int karmaToNextLevel;
  final int currentKarmaLevel;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icon/charity.svg',
            width: 24,
            height: 24,
          ).pad(16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Karma Level $currentKarmaLevel',
                      style: context.textTheme.labelMedium!.apply(
                        fontWeightDelta: 3,
                      ),
                    ),
                    4.verticalSpace,
                    RoundedLinearProgressBar(
                      value: 0.3,
                      color: const Color(0xFFFF8985),
                      bgColor: Colors.grey[200]!,
                    ),
                    4.verticalSpace,
                    Text(
                      '$karmaToNextLevel karma to next level',
                      style: context.textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
