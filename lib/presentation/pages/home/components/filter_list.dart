import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:raise_hope/common/extensions/extensions.dart';

class FilterList extends StatefulWidget {
  const FilterList({super.key, required this.items, required this.onChanged});

  final List<String> items;
  final Function(String) onChanged;

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: widget.items.map((item) => item).length,
        itemBuilder: (context, index) {
          final isSelected = index == 0;
          final themeContext = Theme.of(context);
          return Chip(
            label: Text(widget.items[index].humaniseKebabCase),
            // material 2 style
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
            side: BorderSide(
              color: isSelected
                  ? themeContext.colorScheme.primary
                  : themeContext.colorScheme.onBackground.withOpacity(0.2),
            ),
            backgroundColor: isSelected ? themeContext.colorScheme.primary : themeContext.colorScheme.background,
            labelStyle: themeContext.textTheme.bodySmall!.copyWith(
              color: isSelected ? themeContext.colorScheme.onPrimary : themeContext.colorScheme.primary,
              fontWeight: FontWeight.w700,
            ),
          );
        },
        separatorBuilder: (_, __) => 10.horizontalSpace,
      ),
    );
  }
}
