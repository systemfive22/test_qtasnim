  import 'package:flutter/material.dart';
  import 'package:test_qtasnim/config/app_config.dart';
  import 'package:test_qtasnim/core/themes/theme.dart';

  class CustomTextFormField extends StatelessWidget {
    final String title;
    final String hintText;
    final TextEditingController? controller;
    final IconData? prefixIcon;
    final TextInputType keyboardType;
    final int maxLines;
    final bool isRequired;
    final VoidCallback? onTap;
    final void Function(String)? onChanged;
    final bool readOnly;

    final bool obscureText;
    final String? Function(String?)? validator;

    const CustomTextFormField({
      super.key,
      required this.title,
      required this.hintText,
      this.onTap,
      this.maxLines = 1,
      this.controller,
      this.prefixIcon,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.readOnly = false,
      this.isRequired = false,
      this.onChanged,
      this.validator,
    });

    @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: MyTheme.style.subtitle.copyWith(
                  fontSize: AppSetting.setFontSize(35),
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (isRequired) ...[
                const Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    '*',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ],
          ),
          Space.h(10),
          TextFormField(
            style: MyTheme.style.subtitle,
            maxLines: maxLines,
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            readOnly: readOnly,
            validator: validator,
            onTap: onTap,
            onChanged: onChanged,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              prefixIcon: prefixIcon != null
                  ? Icon(prefixIcon, color: MyTheme.color.grey)
                  : null,
              hintText: hintText,
              hintStyle: TextStyle(color: MyTheme.color.softGrey),
              filled: true,
              fillColor: MyTheme.color.cardBlackWhite(context),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 14.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: MyTheme.color
                      .cardBlackWhite(context)
                      .withValues(alpha: 0.5),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: MyTheme.color.whiteSoft.withValues(alpha: 0.5),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: MyTheme.color.primary, width: 1.5),
              ),
            ),
          ),
          Space.h(10),
        ],
      );
    }
  }
