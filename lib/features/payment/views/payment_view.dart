import 'package:fassla_task/features/payment/widgets/order_success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/shared_widgets/app_main_bar.dart';
import '../../../core/utils/app_strings.dart';
import '../widgets/payment_status_widget.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key, this.isSuccess = true});

  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppMainBar(
        title: isSuccess ? "Order confirmation" : "Payment status",
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(AppStrings.backIcon),
        ),
      ),
      body: isSuccess
          ? OrderSuccessWidget(isSuccess: isSuccess)
          : PaymentStatusWidget(isSuccess: isSuccess),
    );
  }
}
