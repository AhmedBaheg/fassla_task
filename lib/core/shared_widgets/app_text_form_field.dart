import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.textLabel,
    this.hintText,
    this.prefixIcon,
    this.onChanged,
    this.isShowPrefixIcon = false,
    this.suffix,
  });

  final String? textLabel, hintText, prefixIcon;
  final Function(String)? onChanged;
  final bool isShowPrefixIcon;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(textLabel ?? '', style: AppTextStyles.labelLarge),
        SizedBox(height: 8),
        TextFormField(

          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTextStyles.hint,
            prefixIcon: isShowPrefixIcon
                ? Padding(
                    padding: EdgeInsetsGeometry.all(14),
                    child: SvgPicture.asset(prefixIcon ?? ''),
                  )
                : null,
            suffixIcon:suffix ,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: AppColors.borders, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: AppColors.borders, width: 1),
            ),
          ),
          cursorColor: AppColors.textPrimaryLight,
          style: AppTextStyles.bodyMedium,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
