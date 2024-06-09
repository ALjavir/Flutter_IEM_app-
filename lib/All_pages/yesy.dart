// import 'package:flutter/material.dart';
// import 'package:flutter_application_iem/Controller/controller.dart';
// import 'package:get/get.dart';

// class Cartpage extends StatelessWidget {
//   const Cartpage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final cartController = Get.put(CartController());

//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Cart"),
//         ),
//         body: Obx(() {
//           if (cartController.items.isEmpty) {
//             return Center(
//               child: Text("Empty"),
//             );
//           } else {
//             return Column(children: [
//               Expanded(
//                   child: ListView.builder(
//                       itemCount: cartController.items.length,
//                       itemBuilder: (context, index) {
//                         final item = cartController.items[index];
//                         return Card(
//                             elevation: 0.0,
//                             child: Padding(
//                                 padding: const EdgeInsets.fromLTRB(8, 8, 4, 8),
//                                 child: Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Expanded(
//                                         flex: 0,
//                                         child: Container(
//                                           height: 100,
//                                           // MediaQuery.of(context).size.height / 8,
//                                           width: 120,
//                                           //MediaQuery.of(context).size.width / 4,
//                                           color: Colors.blue,
//                                         ),
//                                       ),
//                                       Expanded(
//                                           flex: 2,
//                                           child: Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 8.0),
//                                               child: Column(
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.start,
//                                                   children: [
//                                                     Row(
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .spaceBetween,
//                                                         children: [
//                                                           Expanded(
//                                                             child: Container(
//                                                                 child: Column(
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .start,
//                                                               children: [
//                                                                 Text(item.name),
//                                                                 Text(
//                                                                     'Brand name')
//                                                               ],
//                                                             )),
//                                                           ),
//                                                           Container(
//                                                             child: IconButton(
//                                                                 onPressed: () {
//                                                                   cartController
//                                                                       .removeItem(
//                                                                           index);
//                                                                 },
//                                                                 icon: Icon(Icons
//                                                                     .cancel)),
//                                                           ),
//                                                         ]),
//                                                     Row(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .spaceBetween,
//                                                       children: [
//                                                         Container(
//                                                             child: Text(item
//                                                                 .price
//                                                                 .toString())),
//                                                         Container(
//                                                           height: 40,
//                                                           child: Center(
//                                                             child: Row(
//                                                               children: [
//                                                                 IconButton(
//                                                                     onPressed:
//                                                                         () {},
//                                                                     icon: Icon(Icons
//                                                                         .remove)),
//                                                                 Card(
//                                                                     child: Container(
//                                                                         height:
//                                                                             30,
//                                                                         width:
//                                                                             50,
//                                                                         child: Center(
//                                                                             child:
//                                                                                 Text('100')))),
//                                                                 IconButton(
//                                                                   onPressed:
//                                                                       () {},
//                                                                   icon: Icon(
//                                                                       Icons
//                                                                           .add),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         )
//                                                       ],
//                                                     )
//                                                   ])))
//                                     ])));
//                       })),
//               Container(
//                 padding: EdgeInsets.all(16),
//                 color: Colors.grey[200],
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Total Price:',
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       '\$' + cartController.totalSum().toString(),
//                       style: TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               )
//             ]);
//           }
//         }));
//   }
// }
