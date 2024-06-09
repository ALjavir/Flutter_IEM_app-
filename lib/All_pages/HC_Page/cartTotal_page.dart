import 'package:flutter/material.dart';

import 'package:flutter_application_iem/Controller/controller.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total price:',
                  style:
                      GoogleFonts.rosarivo(textStyle: TextStyle(fontSize: 16)),
                ),
                Text('\$' + cartController.totalSum().toString(),
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Chack Out",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rosarivo(
                      textStyle: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(1),
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
