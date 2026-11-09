import 'package:fassla_task/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class CheckoutOptionTile extends StatelessWidget {
  const CheckoutOptionTile({
    super.key,
    this.onTap,
    required this.checkout,
    required this.isSelected,
  });

  final void Function()? onTap;
  final String checkout;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? AppColors.actionPrimaryLight
                : AppColors.borderDefaultLight,
            width: isSelected ? 1 : 2,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected
                      ? AppColors.actionPrimaryLight
                      : AppColors.borderDefaultLight,
                  width: 2,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(4),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.actionPrimaryLight
                      : AppColors.backgroundCanvasLight,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            if (checkout == "Credit / Debit Card")
              Row(
                children: [
                  SizedBox(width: 12),
                  SvgPicture.asset(AppStrings.visaIcon),
                ],
              ),

            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  checkout == "Credit / Debit Card"
                      ? "Credit / Debit Card"
                      : "Cash on Delivery",
                  style: AppTextStyles.bodyLarge.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                if (checkout == "Credit / Debit Card")
                  Text("Visa ending in 4242", style: AppTextStyles.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
