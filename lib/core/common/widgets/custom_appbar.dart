import 'package:flutter/material.dart';
import 'package:test_qtasnim/app.dart';
import 'package:test_qtasnim/config/app_config.dart';
import 'package:test_qtasnim/core/themes/theme.dart';

AppBar customAppBar({
  BuildContext? context,
  String title = "",
  bool isDrawer = false,
  Widget? action,
  PreferredSizeWidget? bottom, // 🔥 tambah ini
}) {
  return AppBar(
    backgroundColor: MyTheme.color.cardBlackWhite(context!),
    automaticallyImplyLeading: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
    ),
    leading: isDrawer
        ? null
        : IconButton(
            style: IconButton.styleFrom(
              backgroundColor: MyTheme.color
                  .blackWhite(context)
                  .withValues(alpha: 0.05),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(8),
            ),
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: MyTheme.color.blackWhite(context),
            ),
            onPressed: () => appRoute.pop(),
          ),
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: MyTheme.style.title.copyWith(
            fontSize: AppSetting.setFontSize(45),
          ),
        ),
        const Spacer(),
        if (action != null) ...[action],
      ],
    ),
    bottom: bottom, // 🔥 inilah yang bikin bisa ada widget di bawah appbar
  );
}
