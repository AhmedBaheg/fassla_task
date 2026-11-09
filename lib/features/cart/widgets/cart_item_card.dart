import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/app_strings.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({super.key});

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  int counter = 1;

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
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppStrings.productImage, width: 100, height: 100),
            SizedBox(height: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wireless Headphones",
                    style: AppTextStyles.productName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text("\$120", style: AppTextStyles.highlightedPrice),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (counter > 1) {
                            setState(() {
                              counter--;
                            });
                          }
                        },
                        icon: SvgPicture.asset(AppStrings.decrementIcon),
                      ),
                      SizedBox(width: 10),
                      Text(
                        counter.toString(),
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.darkText,
                        ),
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        icon: SvgPicture.asset(AppStrings.incrementIcon),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppStrings.deleteIcon),
            ),
          ],
        ),
      ),
    );
  }
}
