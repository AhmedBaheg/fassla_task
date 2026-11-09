
import '../../product/model/product_model.dart';

class CartModel {
  final ProductModel? productModel;
  int? quantity;
  double? totalPrice;

  CartModel({this.productModel, this.quantity = 1, this.totalPrice = 0.0});
}
