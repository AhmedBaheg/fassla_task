import 'package:fassla_task/features/product/widgets/product_grid_item.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';

class ProductGridView extends StatelessWidget {
  ProductGridView({super.key});

  List<ProductModel> products = [
    ProductModel(
      id: 1,
      image: 'assets/images/image_1.png',
      title: 'Wireless Headphones',
      price: 120.00,
    ),
    ProductModel(
      id: 2,
      image: 'assets/images/iphone.png',
      title: 'IPhone 17',
      price: 889.99,
    ),
    ProductModel(
      id: 3,
      image: 'assets/images/smart_watch.png',
      title: 'Smart Watch',
      price: 249.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 14,
          crossAxisSpacing: 14,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) =>
            ProductGridItem(product: products[index],),
      ),
    );
  }
}


