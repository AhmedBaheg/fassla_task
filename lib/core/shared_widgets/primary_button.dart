import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon, this.isOutLineBtn = false,
  });

  final VoidCallback? onPressed;
  final String? text;
  final String? icon;
  final bool isOutLineBtn;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 50),
        backgroundColor: isOutLineBtn
            ? Colors.transparent
            : AppColors.actionPrimaryLight,
        shadowColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: isOutLineBtn
              ? BorderSide(color: AppColors.borders, width: 1)
              : BorderSide.none,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon != null
                    ? Row(
                        children: [
                          SvgPicture.asset(icon!, width: 10, height: 10),
                          const SizedBox(width: 60),
                        ],
                      )
                    : const SizedBox(),
                Text(
                  text ?? '',
                  style: isOutLineBtn
                      ? AppTextStyles.button.copyWith(color: AppColors.darkText)
                      : AppTextStyles.button,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
