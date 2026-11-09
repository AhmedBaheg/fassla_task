import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import 'cart_summary_order.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Order summary", style: AppTextStyles.titleLarge,),
        SizedBox(height: 24,),
        CartSummaryRow(title: "Subtotal", value: "\$120.00"),
        SizedBox(height: 10,),
        CartSummaryRow(title: "Delivery", value: "\$10.00"),
        SizedBox(height: 13,),
        Divider(
          color: AppColors.borders,
          thickness: 1,
        ),
        SizedBox(height: 13,),
        CartSummaryRow(title: "Total", value: "\$130.00", isTotal: true),
      ],
    );
  }
}
