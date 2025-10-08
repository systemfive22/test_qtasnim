import 'package:flutter/material.dart';
import 'package:test_qtasnim/config/app_config.dart';
import 'package:test_qtasnim/core/themes/theme.dart';

class SearchItem extends StatelessWidget {
  final Function(String)? onChange;
  final Function(String)? onSubmit;
  final TextEditingController controller;
  final bool readOnly;
  final bool autoFocus;
  final String hintText;
  final bool enableKeyword;
  final Color? color;
  const SearchItem({
    super.key,
    required this.controller,
    this.onChange,
    this.onSubmit,
    this.readOnly = false,
    this.enableKeyword = true,
    this.color,
    required this.autoFocus,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: MyTheme.color.blackWhite(context).withValues(alpha: 0.5),
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.search,
              size: 20,
              color: MyTheme.color.blackWhite(context),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: TextField(
                enabled: enableKeyword,
                controller: controller,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                readOnly: readOnly,
                autofocus: autoFocus,
                style: TextStyle(
                  fontSize: AppSetting.setFontSize(40),
                  color: MyTheme.color.blackWhite(context),
                  fontWeight: FontWeight.w600,
                ),
                onChanged: (value) => onChange!(value) ?? {},
                onSubmitted: (value) => onSubmit!(value) ?? {},
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
