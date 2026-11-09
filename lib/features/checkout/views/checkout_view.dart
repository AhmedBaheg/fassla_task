import 'package:fassla_task/core/shared_widgets/app_main_bar.dart';
import 'package:fassla_task/features/cart/widgets/order_summary_section.dart';
import 'package:fassla_task/features/payment/views/payment_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/shared_widgets/primary_button.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/app_strings.dart';
import '../widgets/checkout_option_tile.dart';
import '../widgets/shipping_address_card.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppMainBar(
        title: "Checkout",
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(AppStrings.backIcon),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery address", style: AppTextStyles.titleLarge),
            SizedBox(height: 9),
            ShippingAddressCard(),
            SizedBox(height: 24),
            Text("Payment method", style: AppTextStyles.titleLarge),
            SizedBox(height: 11),
            CheckoutOptionTile(
              checkout: "Credit / Debit Card",
              isSelected: true,
            ),
            SizedBox(height: 11),
            CheckoutOptionTile(checkout: "Cash on Delivery", isSelected: false),
            SizedBox(height: 24),
            OrderSummarySection(),
            SizedBox(height: 24),
            PrimaryButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentView()),
                );
              },
              icon: AppStrings.placeOrderIcon,
              text: "Place Order",
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
