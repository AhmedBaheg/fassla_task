
import 'package:fassla_task/features/cart/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/app_strings.dart';
import '../cubits/cart_cubit.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cartModel,
  });

  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    final product = cartModel.productModel!;

    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(
          color: AppColors.borders,
          width: 1,
        ),
      ),
      color: AppColors.white,
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.image,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: AppTextStyles.productName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 4),

                  Text(
                    "\$${(cartModel.productModel!.price * cartModel.quantity!).toStringAsFixed(2)}",
                    style: AppTextStyles.highlightedPrice,
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (cartModel.quantity! > 1) {
                            context.read<CartCubit>().decreaseQuantity(
                              product,
                            );
                          }
                        },
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: SvgPicture.asset(
                          AppStrings.decrementIcon,
                        ),
                      ),

                      const SizedBox(width: 12),

                      Text(
                        cartModel.quantity.toString(),
                        style: AppTextStyles.bodySmall.copyWith(
                          color: AppColors.darkText,
                        ),
                      ),

                      const SizedBox(width: 12),

                      IconButton(
                        onPressed: () {
                          context.read<CartCubit>().increaseQuantity(
                            product,
                          );
                        },
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: SvgPicture.asset(
                          AppStrings.incrementIcon,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            IconButton(
              onPressed: () {
                context.read<CartCubit>().removeItem(product);
              },
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: SvgPicture.asset(
                AppStrings.deleteIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
