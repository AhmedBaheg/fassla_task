import 'package:fassla_task/core/shared_widgets/app_main_bar.dart';
import 'package:fassla_task/core/shared_widgets/app_text_form_field.dart';
import 'package:fassla_task/core/shared_widgets/empty_state_widget.dart';
import 'package:fassla_task/core/shared_widgets/primary_button.dart';
import 'package:fassla_task/core/utils/app_strings.dart';
import 'package:fassla_task/features/cart/cubits/cart_cubit.dart';
import 'package:fassla_task/features/cart/widgets/list_cart_builder.dart';
import 'package:fassla_task/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        } else if (state is CartSuccess) {
          return Scaffold(
            appBar: AppMainBar(
              title: "Cart",
              leading: isShowBackIcon
                  ? IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView()),
                        );
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
                  Expanded(child: ListCartBuilder(cartList: state.cartList)),
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
                  OrderSummarySection(cartList: state.cartList),
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
        return EmptyStateWidget(
          icon: Icons.shopping_cart_outlined,
          title: 'Your cart is empty',
          description: 'You haven’t added any products to your cart yet.',
        );
      },
    );
  }
}
