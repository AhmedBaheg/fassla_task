import 'package:fassla_task/features/payment/widgets/warning_icon.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class PaymentIssueCard extends StatelessWidget {
  const PaymentIssueCard({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borders, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              WarningIcon(),

              const SizedBox(width: 10),

              Text(title, style: AppTextStyles.titleMedium),
            ],
          ),

          const SizedBox(height: 5),

          Text(description, style: AppTextStyles.bodySmall),
        ],
      ),
    );
  }
}
