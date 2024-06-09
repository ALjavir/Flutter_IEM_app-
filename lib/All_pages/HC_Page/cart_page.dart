import 'package:flutter/material.dart';
import 'package:flutter_application_iem/All_pages/HC_Page/cartTotal_page.dart';
import 'package:flutter_application_iem/All_pages/Navbar_page.dart';
import 'package:flutter_application_iem/All_pages/quantity_in&dec_page.dart';
import 'package:flutter_application_iem/Controller/controller.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartpage extends StatefulWidget {
  Cartpage({Key? key}) : super(key: key);

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  final GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.2),
          title: Center(
            child: Text("KineticSonic",
                textAlign: TextAlign.center,
                style: GoogleFonts.rougeScript(
                    textStyle: TextStyle(fontSize: 30))),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Navbar()));
                },
                icon: Icon(Icons.home))
          ],
        ),
        body: Obx(() {
          if (cartController.items.isEmpty) {
            return Center(
              child: Text("Empty",
                  style:
                      GoogleFonts.rosarivo(textStyle: TextStyle(fontSize: 24))),
            );
          } else {
            return Column(children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: cartController.items.length,
                      itemBuilder: (context, index) {
                        final item = cartController.items[index];
                        return Card(
                            elevation: 0.0,
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 0,
                                        child: Container(
                                          height: 100,
                                          // MediaQuery.of(context).size.height / 8,
                                          width: 120,
                                          //MediaQuery.of(context).size.width / 4,

                                          child: Image.asset(
                                            item.imgPaths[0],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                                child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(item.name,
                                                                    style: GoogleFonts.quicksand(
                                                                        textStyle:
                                                                            TextStyle(fontSize: 16))),
                                                                Text(
                                                                    item
                                                                        .bardname,
                                                                    style: GoogleFonts.rosarivo(
                                                                        textStyle:
                                                                            TextStyle(fontSize: 14)))
                                                              ],
                                                            )),
                                                          ),
                                                          Container(
                                                            child: IconButton(
                                                                onPressed: () {
                                                                  cartController
                                                                      .removeItem(
                                                                          index);
                                                                },
                                                                icon: Icon(Icons
                                                                    .cancel)),
                                                          ),
                                                        ]),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          child: Text(
                                                              "\$" +
                                                                  item.price
                                                                      .toString(),
                                                              style: GoogleFonts.quicksand(
                                                                  textStyle: TextStyle(
                                                                      fontSize:
                                                                          18))),
                                                        ),
                                                        QuantityDisplay(
                                                          index: index,
                                                        ),
                                                        // Container(
                                                        //   height: 40,
                                                        //   child: Center(
                                                        //     child: Row(
                                                        //       children: [
                                                        //         IconButton(
                                                        //             onPressed:
                                                        //                 () {
                                                        //               cartController
                                                        //                   .dexQuantityandPrice(
                                                        //                       index);
                                                        //             },
                                                        //             icon: Icon(Icons
                                                        //                 .remove)),
                                                        //         Card(
                                                        //             child:
                                                        //                 Container(
                                                        //           height: 30,
                                                        //           width: 50,
                                                        //           child: Center(
                                                        //             child: Obx(() => Text(
                                                        //                 cartController
                                                        //                     .items[
                                                        //                         index]
                                                        //                     .quantityforcalcart
                                                        //                     .toString(),
                                                        //                 key: key,)),
                                                        //           ),
                                                        //         )),
                                                        //         IconButton(
                                                        //           onPressed:
                                                        //               () {
                                                        //             cartController
                                                        //                 .increaseQuantityandPrice(
                                                        //                     index);
                                                        //             key.currentState?.rebuild();
                                                        //           },
                                                        //           icon: Icon(
                                                        //               Icons
                                                        //                   .add),
                                                        //         ),
                                                        //       ],
                                                        //     ),
                                                        //   ),
                                                        // )
                                                      ],
                                                    )
                                                  ])))
                                    ])));
                      })),
              Container(child: CartTotal())
            ]);
          }
        }));
  }
}
