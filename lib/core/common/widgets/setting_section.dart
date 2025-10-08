import 'package:flutter/material.dart';
import 'package:test_qtasnim/config/app_config.dart';
import 'package:test_qtasnim/core/themes/theme.dart';

class SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const SettingsSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    final divider = Container(
      margin: EdgeInsets.only(left: AppSetting.deviceWidth / 10, right: 20),
      height: 2,
      color: MyTheme.color.softGrey.withValues(alpha: 0.2),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 0),
          child: Text(
            title,
            style: MyTheme.style.title.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: MyTheme.color.cardBlackWhite(context),
            // boxShadow: [
            //   BoxShadow(
            //     color: MyTheme.color.blackWhite(context).withValues(alpha: 0.1),
            //     blurRadius: 8,
            //     offset: const Offset(0, 4),
            //   ),
            // ],
            border: Border.all(
              color: MyTheme.color.blackWhite(context).withValues(alpha: 0.1),
              width: 1,
            ),
          ),
          child: Column(
            children: List.generate(items.length, (index) {
              final item = items[index];
              final isLast = index == items.length - 1;
              return Column(children: [item, if (!isLast) divider]);
            }),
          ),
        ),
      ],
    );
  }
}
