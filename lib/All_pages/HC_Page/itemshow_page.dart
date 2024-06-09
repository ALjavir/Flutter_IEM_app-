// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:flutter_application_iem/All_pages/HC_Page/cart_page.dart';
import 'package:flutter_application_iem/All_pages/Navbar_page.dart';
import 'package:flutter_application_iem/Controller/controller.dart';
import 'package:flutter_application_iem/iem_class/iemD.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageController extends GetxController {
  var currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }
}

class ItemShow extends StatelessWidget {
  Iem? item;
  final ImageController imageController = Get.put(ImageController());

  ItemShow(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.2),
        title: Center(
          child: Text("KineticSonic",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.rougeScript(textStyle: TextStyle(fontSize: 30))),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Navbar()));
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Cartpage()));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    child: Obx(
                      () => Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                if (imageController.currentIndex.value > 0) {
                                  imageController.currentIndex.value--;
                                }
                              },
                              icon: Icon(Icons.arrow_back)),
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                item!.imgPaths[imageController
                                    .currentIndex.value
                                    .clamp(0, item!.imgPaths.length - 1)],
                                fit: BoxFit.cover,
                                height: 350,
                                width: 375,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                if (imageController.currentIndex.value <
                                    item!.imgPaths.length - 1) {
                                  imageController.currentIndex.value++;
                                }
                              },
                              icon: Icon(Icons.arrow_forward)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.0),
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: item!.imgPaths.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            imageController.updateIndex(index);
                          },
                          child: Card(
                            color: Colors.white,
                            elevation: 0.4,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              child: Image.asset(
                                item!.imgPaths[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              item!.bardname,
                              style: GoogleFonts.rosarivo(
                                textStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              item!.name,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Center(
                            child: Text("\$" + item!.price.toString(),
                                textAlign: TextAlign.center,
                                style: GoogleFonts.quicksand(
                                    textStyle: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500))),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                            child: Text(
                              "Description",
                              style: GoogleFonts.rosarivo(
                                textStyle: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Text(
                            item!.discp,
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Text(
                              "Specifications",
                              style: GoogleFonts.rosarivo(
                                textStyle: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: item!.spec
                                  .map((line) => Text(
                                        "• $line",
                                        style: GoogleFonts.quicksand(
                                          textStyle: TextStyle(fontSize: 14),
                                        ),
                                      ))
                                  .toList(),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Get.find<CartController>().addItemToCart(item!);
                },
                child: Text(
                  "Add To Cart",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rosarivo(
                      textStyle: TextStyle(fontSize: 20, color: Colors.white)),
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
