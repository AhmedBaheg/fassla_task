import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

class BuildCategoryListViewItemWidget extends StatelessWidget {
  const BuildCategoryListViewItemWidget({
    super.key,
    required this.text,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  final String text;
  final int index, selectedIndex;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
          decoration: BoxDecoration(
            color: selectedIndex == index
                ? AppColors.actionPrimaryLight
                : Colors.transparent,
            borderRadius: selectedIndex == index
                ? BorderRadius.circular(20)
                : BorderRadius.circular(20),
            border: Border.all(
              color: selectedIndex == index ? AppColors.actionPrimaryLight :AppColors.borders,
              width: 1,
            ),
          ),
          child: Text(
            text,
            style: selectedIndex == index
                ? AppTextStyles.bodySmall.copyWith(color: AppColors.white)
                : AppTextStyles.bodySmall,
          ),
        ),
      ),
    );
  }
}
