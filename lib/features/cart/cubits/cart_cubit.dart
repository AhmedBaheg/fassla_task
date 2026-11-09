

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../product/model/product_model.dart';
import '../models/cart_model.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  var cartList = <CartModel>[];

  void addToCart(ProductModel productModel) {


    try {
      final existingItem = cartList.indexWhere(
        (item) => item.productModel?.id == productModel.id,
      );

      if (existingItem != -1) {
        final oldItem = cartList[existingItem];
        final newItem = cartList[existingItem];
        newItem.quantity = oldItem.quantity! + 1;
      } else {
        cartList.add(CartModel(productModel: productModel));
      }
      emit(CartSuccess(cartList: cartList));
    } on Exception catch (e) {
      emit(CartFailure(errorMessage: e.toString()));
    }
  }

  void increaseQuantity(ProductModel productModel) {
    emit(CartLoading());
    try {
      final existingItem = cartList.indexWhere(
        (item) => item.productModel?.id == productModel.id,
      );
      if (existingItem != -1) {
        final item = cartList[existingItem];
        item.quantity = item.quantity! + 1;
      }
      emit(CartSuccess(cartList: cartList));
    } on Exception catch (e) {
      emit(CartFailure(errorMessage: e.toString()));
    }
  }

  void decreaseQuantity(ProductModel productModel) {
    emit(CartLoading());
    try {
      final existingItem = cartList.indexWhere(
        (item) => item.productModel?.id == productModel.id,
      );
      if (existingItem != -1) {
        final item = cartList[existingItem];
        item.quantity = item.quantity! - 1;
      }
      emit(CartSuccess(cartList: cartList));
    } on Exception catch (e) {
      emit(CartFailure(errorMessage: e.toString()));
    }
  }

  void removeItem(ProductModel productModel) {
    emit(CartLoading());
    try {
      final existingItem = cartList.indexWhere(
        (item) => item.productModel?.id == productModel.id,
      );
      if (existingItem != -1) {
        cartList.removeAt(existingItem);
      }
      emit(CartSuccess(cartList: cartList));
    } on Exception catch (e) {
      emit(CartFailure(errorMessage: e.toString()));
    }
  }

  void clearCart() {
    emit(CartLoading());
    try {
      cartList.clear();
      emit(CartSuccess(cartList: cartList));
    } on Exception catch (e) {
      emit(CartFailure(errorMessage: e.toString()));
    }
  }

  double totalPrice() {
    double totalPrice = 0.0;
    for (var item in cartList) {
      totalPrice += item.productModel!.price * item.quantity!;
    }
    return totalPrice;
  }
}
