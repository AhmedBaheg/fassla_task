import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/app_strings.dart';

class OrderPaymentHeader extends StatelessWidget {
  const OrderPaymentHeader({super.key, this.isSuccess = true});

  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          isSuccess ? AppStrings.orderSuccessIcon : AppStrings.orderFailureIcon,
        ),
        SizedBox(height: 16),
        Text(
          isSuccess ? "Order placed successfully!" : "Payment unsuccessful",
          style: AppTextStyles.headlineLarge,
        ),
        SizedBox(height: 8),
        Text(
          isSuccess
              ? "Your order is confirmed and on its way"
              : "We couldn’t complete your payment.",
          style: AppTextStyles.bodyMedium,
        ),
        Text(
          isSuccess
              ? "to being prepared."
              : "Your order has not been confirmed.",
          style: AppTextStyles.bodyMedium,
        ),
      ],
    );
  }
}
