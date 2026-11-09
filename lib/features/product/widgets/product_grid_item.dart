import 'package:fassla_task/features/cart/views/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/app_strings.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: AppColors.borders, width: 1),
      ),
      color: AppColors.white,
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Center(
                    child: Image.asset(
                      AppStrings.productImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset(AppStrings.favIcon),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartView(isShowBackIcon: true,)),
                      );
                    },
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset(AppStrings.cartIcon),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),

            Text(
              "Wireless Headphones",
              style: AppTextStyles.productName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 14),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$120", style: AppTextStyles.productPrice),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: AppColors.ratingGold,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text("4.5", style: AppTextStyles.rating),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
