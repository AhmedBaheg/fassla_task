import 'package:fassla_task/core/shared_widgets/primary_button.dart';
import 'package:fassla_task/features/payment/widgets/cart_saved_info_banner.dart';
import 'package:fassla_task/features/payment/widgets/order_payment_header.dart';
import 'package:fassla_task/features/payment/widgets/payment_issue_card.dart';
import 'package:flutter/cupertino.dart';

class PaymentStatusWidget extends StatelessWidget {
  const PaymentStatusWidget({super.key, required this.isSuccess});

  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 50),
            OrderPaymentHeader(isSuccess: isSuccess),
            SizedBox(height: 32),
            PaymentIssueCard(
              title: "What happened?",
              description: "Your payment was declined or interrupted. "
                  "\n Check your payment details or try a different "
                  "\n payment method. No charge was confirmed.",
            ),
            SizedBox(height: 17),
            CartSavedInfoBanner(message: "Your cart items are still saved."),
            SizedBox(height: 17),
            PrimaryButton(onPressed: () {}, text: "Try payment again"),
            SizedBox(height: 12),
            PrimaryButton(
              onPressed: () {},
              text: "Change payment method",
              isOutLineBtn: true,
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

