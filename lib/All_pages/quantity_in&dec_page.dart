//ignore_for_file: must_be_immutable, unnecessary_statements, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_iem/Controller/controller.dart';
import 'package:get/get.dart';

class QuantityDisplay extends StatelessWidget {
  final int index;

  QuantityDisplay({Key? key, required this.index}) : super(key: key);

  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Center(
        child: Obx(
          () => Row(
            children: [
              IconButton(
                onPressed: () {
                  cartController.decrementQuantityandPrice(index);
                },
                icon: Icon(Icons.remove),
              ),
              Card(
                child: Container(
                  height: 30,
                  width: 50,
                  child: Center(
                    child: Text(
                      cartController.items[index].quantityforcalcart.toString(),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  cartController.increaseQuantityandPrice(index);
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
