import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../models/cart_model.dart';
import 'cart_summary_order.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({super.key, this.cartList});

  final List<CartModel>? cartList;

  @override
  Widget build(BuildContext context) {
    const double deliveryPrice = 10.0;

    double totalPrice = 0.0;

    if (cartList != null) {
      for (var item in cartList!) {
        totalPrice += item.productModel!.price * item.quantity!;
      }
    }

    final double finalTotal = totalPrice + deliveryPrice;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Order summary", style: AppTextStyles.titleLarge),
        const SizedBox(height: 24),

        CartSummaryRow(
          title: "Subtotal",
          value: "\$${totalPrice.toStringAsFixed(2)}",
        ),

        const SizedBox(height: 10),

        CartSummaryRow(
          title: "Delivery",
          value: "\$${deliveryPrice.toStringAsFixed(2)}",
        ),

        const SizedBox(height: 13),

        Divider(color: AppColors.borders, thickness: 1),

        const SizedBox(height: 13),

        CartSummaryRow(
          title: "Total",
          value: "\$${finalTotal.toStringAsFixed(2)}",
          isTotal: true,
        ),
      ],
    );
  }
}