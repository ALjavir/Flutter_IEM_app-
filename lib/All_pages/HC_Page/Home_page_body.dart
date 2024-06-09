import 'package:flutter/material.dart';

import 'package:flutter_application_iem/All_pages/HC_Page/itemshow_page.dart';

import 'package:flutter_application_iem/iem_class/iemD.dart';

import 'package:google_fonts/google_fonts.dart';

class HomepageBody extends StatelessWidget {
  //const HomepageBody({super.key});
  const HomepageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: iemlist.length,
        itemBuilder: (context, index) {
          Iem item = iemlist[index];

          return Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 0.4,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => (ItemShow(item))));
                  },
                  child: Column(children: [
                    Image.asset(
                      item.imgPaths[0],
                      fit: BoxFit.cover,
                      height: 200,
                      width: 300,
                    ),
                    SizedBox(height: 5),
                    Text(
                      iemlist[index].bardname,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rosarivo(
                        textStyle: TextStyle(fontSize: 20),
                      ),
                    ),
                    Text(iemlist[index].name,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(fontSize: 14))),

                    Text("\$" + iemlist[index].price.toString(),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(fontSize: 18))),

                    // InkWell(
                    //   child: Container(child: Text("Add")),
                    //   onTap: () {
                    //     Get.find<CartController>().addItemToCart(item);
                    //   },
                    // )
                  ]),
                ),
              ));
        });
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_application_iem/Controller/controller.dart';
// import 'package:flutter_application_iem/iem_class/iemD.dart';
// import 'package:get/get.dart';


// class HomepageBody extends StatelessWidget {
//   const HomepageBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: iemlist.length,
//       itemBuilder: (context, index) {
//         final item = iemlist[index];
//         return Column(
//           children: [
//             Image.asset(item.imgpath),
//             Text(item.name),
//             Text(item.price.toString()),
//             Text(item.discp),
//             InkWell(
//               child: Container(child: Text("Add")),
//               onTap: () {
//                 Get.find<CartController>().addItemToCart(item);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
