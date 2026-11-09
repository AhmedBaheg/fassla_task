import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/app_strings.dart';

class ShippingAddressCard extends StatelessWidget {
  const ShippingAddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: AppColors.borders, width: 1),
      ),
      color: AppColors.white,
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(AppStrings.locationIcon),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Home", style: AppTextStyles.titleMedium),
                SizedBox(height: 7),
                Text(
                  "Alex Morgan · +1 555 010 234",
                  style: AppTextStyles.bodySmall,
                ),
                SizedBox(height: 7),
                Text(
                  "42 Park Avenue, Apt 5B",
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.darkText,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "New York, NY 10016",
                  style: AppTextStyles.bodySmall.copyWith(
                    color: AppColors.darkText,
                  ),
                ),
              ],
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(
                "Edit",
                style: AppTextStyles.labelLarge.copyWith(
                  color: AppColors.actionPrimaryLight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
