import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import 'order_detail_row.dart';

class OrderConfirmationDetails extends StatelessWidget {
  const OrderConfirmationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: AppColors.borders, width: 1),
      ),
      color: AppColors.white,
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ORDER DETAILS", style: AppTextStyles.overline),
            SizedBox(height: 12),

            OrderDetailRow(title: 'Order number', value: "#ORD-28491"),
            SizedBox(height: 12),

            const Divider(height: 1, thickness: 1, color: AppColors.borders),
            SizedBox(height: 12),

            OrderDetailRow(title: 'Estimated delivery', value: "Nov 11 – 13"),
            SizedBox(height: 12),

            const Divider(height: 1, thickness: 1, color: AppColors.borders),
            SizedBox(height: 12),

            OrderDetailRow(
              title: 'Total paid',
              value: "\$226.00",
              isTotal: true,
            ),
          ],
        ),
      ),
    );
  }
}
