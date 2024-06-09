import 'package:flutter_application_iem/iem_class/iemD.dart';

import 'package:get/get.dart';

class CartController extends GetxController {
  final items = <Iem>[].obs;

  void addItemToCart(Iem item) {
    if (!items.contains(item) && item.quantity >= 1) {
      item.quantity--;
      item.quantityforcalcart++;
      print('Quantity of ${item.name} after decrement: ${item.quantity}');
      items.add(item);
    }
  }

  void removeItem(int index) {
    items[index].quantity++;
    items[index].quantityforcalcart--;
    print(
        'Quantity of ${items[index].name} after decrement: ${items[index].quantity}');
    items.removeAt(index);
  }

  int totalSum() {
    int sum = 0;
    for (int i = 0; i < items.length; i++) {
      sum += (items[i].price * items[i].quantityforcalcart.toInt());
    }
    return sum;
  }

  void updateItem(Iem item) {
    final index = items.indexWhere((element) => element == item);
    if (index != -1) {
      items[index] = item;
      //print('Updated item in CartController.items: ${items[index]}');
    }
  }

  void increaseQuantityandPrice(int index) {
    if (items[index].quantityforcalcart < items[index].quantity) {
      items[index].quantityforcalcart++;
      updateItem(items[index]);
      print(items[index].quantityforcalcart);
    }
    //  else {
    //   print("Quantity for calculation cannot exceed the item's quantity.");
    // }
  }

  void decrementQuantityandPrice(int index) {
    if (items[index].quantityforcalcart > 0) {
      items[index].quantityforcalcart--;
      updateItem(items[index]);
      print(items[index].quantityforcalcart);
    }
  }
}
