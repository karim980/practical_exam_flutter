import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = [].obs;

  void addToCart({required String name,required String price,required String img}) {
    List items = [{
      'name':name,
      'price':price,
      'img':img,
    }];
    cartItems.addAll(items);
  }
}
