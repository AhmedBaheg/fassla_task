import 'package:fassla_task/core/shared_widgets/app_main_bar.dart';
import 'package:fassla_task/core/shared_widgets/app_text_form_field.dart';
import 'package:fassla_task/core/shared_widgets/primary_button.dart';
import 'package:fassla_task/core/utils/app_strings.dart';
import 'package:fassla_task/features/cart/widgets/list_cart_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../checkout/views/checkout_view.dart';
import '../widgets/order_summary_section.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, this.isShowBackIcon = false});

  final bool isShowBackIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppMainBar(
        title: "Cart",
        leading: isShowBackIcon
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(AppStrings.backIcon),
              )
            : null,
      ),
      body: Padding(
        padding: isShowBackIcon
            ? const EdgeInsets.symmetric(horizontal: 20)
            : EdgeInsetsGeometry.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("3 items in your bag", style: AppTextStyles.bodySmall),
            SizedBox(height: 17),
            Expanded(child: ListCartBuilder()),
            SizedBox(height: 64),
            AppTextFormField(
              hintText: "Promo code",
              suffix: TextButton(
                onPressed: () {},
                child: Text(
                  "Apply",
                  style: AppTextStyles.labelLarge.copyWith(
                    color: AppColors.actionPrimaryLight,
                  ),
                ),
              ),
            ),
            SizedBox(height: 14),
            OrderSummarySection(),
            SizedBox(height: 47),
            PrimaryButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutView()),
                );
              },
              text: "Proceed to Checkout ",
            ),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
