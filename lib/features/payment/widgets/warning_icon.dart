import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class WarningIcon extends StatelessWidget {
  const WarningIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: const BoxDecoration(
        color: AppColors.warningBackground,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.priority_high_rounded,
        size: 19,
        color: AppColors.warningOrange,
      ),
    );
  }
}