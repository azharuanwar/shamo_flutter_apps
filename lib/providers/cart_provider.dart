import 'package:flutter/cupertino.dart';
import 'package:shamo_apps/models/cart_model.dart';
import 'package:shamo_apps/models/product_models.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];
  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(ProductModel product) {

  }

  // productExist(ProductModel product) {
  //   if (_carts.indexWhere((element) => element.product.id == product.id)) {
  //
  //   }
  // }
}