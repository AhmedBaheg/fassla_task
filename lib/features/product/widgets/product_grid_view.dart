import 'package:fassla_task/features/product/widgets/product_grid_item.dart';
import 'package:flutter/material.dart';


class ProductGridView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 14,
          crossAxisSpacing: 14,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) =>
            const ProductGridItem(),
      ),
    );
  }
}
