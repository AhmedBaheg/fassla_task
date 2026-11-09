import 'package:fassla_task/features/cart/widgets/cart_item_card.dart';
import 'package:flutter/material.dart';

import '../models/cart_model.dart';

class ListCartBuilder extends StatelessWidget {
  const ListCartBuilder({super.key, required this.cartList});

  final List<CartModel> cartList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cartList.length,
      itemBuilder: (context, index) => CartItemCard(cartModel: cartList[index],),
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 15),
    );
  }
}
