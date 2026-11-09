import 'package:fassla_task/core/theme/app_colors.dart';
import 'package:fassla_task/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CartSavedInfoBanner extends StatelessWidget {
  const CartSavedInfoBanner({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(
        minHeight: 56,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.softHighlight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_rounded,
            size: 18,
            color: AppColors.primaryBlue,
          ),

          const SizedBox(width: 8),

          Expanded(
            child: Text(
              message,
              style: AppTextStyles.labelMedium.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}