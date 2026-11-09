import 'package:flutter/material.dart';

import '../../../core/theme/app_text_styles.dart';

class OrderDetailRow extends StatelessWidget {
  const OrderDetailRow({super.key,
    required this.title,
    required this.value,
    this.isTotal = false,
  });

  final String title;
  final String value;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: AppTextStyles.bodyMedium,
          ),
        ),


        Text(
          value,
          textAlign: TextAlign.end,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: isTotal
              ? AppTextStyles.totalPrice
              : AppTextStyles.labelMedium
        ),
      ],
    );
  }
}
