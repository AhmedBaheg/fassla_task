import 'package:fassla_task/features/cart/widgets/cart_item_card.dart';
import 'package:flutter/material.dart';

class ListCartBuilder extends StatelessWidget {
  const ListCartBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2,
      itemBuilder: (context, index) => CartItemCard(),
      separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 15,),
    );
  }
}
