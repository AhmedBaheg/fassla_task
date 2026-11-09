import 'package:fassla_task/core/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import '../../../home_view.dart';
import 'order_confirmation_details.dart';
import 'order_payment_header.dart';

class OrderSuccessWidget extends StatelessWidget {
  const OrderSuccessWidget({super.key, required this.isSuccess});

  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 72),
            OrderPaymentHeader(),
            SizedBox(height: 24),
            OrderConfirmationDetails(),
            SizedBox(height: 40),
            PrimaryButton(onPressed: () {}, text: "Track order"),
            SizedBox(height: 24),
            PrimaryButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) => HomeView()), (
                        route) => false);
              },
              text: "Continue shopping",
              isOutLineBtn: true,
            ),
          ],
        ),
      ),
    );
  }
}
