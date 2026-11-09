import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class CartSummaryRow extends StatelessWidget {
  const CartSummaryRow({
    super.key,
    required this.title,
    required this.value,
    this.isTotal = false,
  });

  final String title, value;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: isTotal
              ? AppTextStyles.headlineLarge
              : AppTextStyles.titleMedium
              .copyWith(color: AppColors.textSecondaryLight),
        ),
        Text(
          value,
          style: isTotal
              ? AppTextStyles.totalPrice
              : AppTextStyles.productPrice
              .copyWith(color: AppColors.textPrimaryLight),
        ),
      ],
    );
  }
}
