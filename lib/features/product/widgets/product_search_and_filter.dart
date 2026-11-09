
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/shared_widgets/app_text_form_field.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/app_strings.dart';

class ProductSearchAndFilter extends StatelessWidget {
  const ProductSearchAndFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Row(

      children: [
        Expanded(
          child: AppTextFormField(
            hintText: "Search",
            prefixIcon: AppStrings.searchIcon,
          ),
        ),
        const SizedBox(width: 14),
        SizedBox(
          height: 49,
          width: 44,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.actionPrimaryLight,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: SvgPicture.asset(
                AppStrings.filterIcon,
              ),
            ),
          ),
        ),
      ],
    ),
    );
  }
}
