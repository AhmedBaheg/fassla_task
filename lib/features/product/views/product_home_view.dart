import 'package:fassla_task/core/shared_widgets/app_main_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/app_strings.dart';
import '../widgets/categories_list_view_builder_widget.dart';
import '../widgets/product_grid_view.dart';
import '../../product/widgets/product_search_and_filter.dart';

class ProductHomeView extends StatelessWidget {
  const ProductHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppMainBar(
        title: "Discover",
        actions: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppStrings.cartIcon),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Find something you’ll love", style: AppTextStyles.bodySmall),
          SizedBox(height: 14),
          ProductSearchAndFilter(),
          SizedBox(height: 20),
          Text("Categories", style: AppTextStyles.titleLarge),
          SizedBox(height: 14),
          CategoriesListViewBuilderWidget(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Products", style: AppTextStyles.titleLarge),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: AppTextStyles.labelLarge.copyWith(
                    color: AppColors.actionPrimaryLight,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 14),
          ProductGridView(),
        ],
      ),
    );
  }
}

