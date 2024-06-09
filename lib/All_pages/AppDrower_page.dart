import 'package:flutter/material.dart';
import 'package:flutter_application_iem/All_pages/HC_Page/cart_page.dart';
import 'package:flutter_application_iem/All_pages/HC_Page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppDrower extends StatelessWidget {
  const MyAppDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffD9D9D9),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: DrawerHeader(
              child: Text("KineticSonic",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rougeScript(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                  )))),
        ),
        ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: Image.asset(
            "lib/assets/images/Manu_image/I_IEM.png",
            fit: BoxFit.contain,
            height: 60,
            width: 60,
          ),
          title: Text("In Ear Monitor",
              style: GoogleFonts.quicksand(textStyle: TextStyle(fontSize: 18))),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Homepage()));
          },
        ),
        ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: Image.asset(
            "lib/assets/images/Manu_image/I_Headphone.png",
            fit: BoxFit.contain,
            height: 50,
            width: 50,
          ),
          title: Text("  Head Phone",
              style: GoogleFonts.quicksand(textStyle: TextStyle(fontSize: 18))),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () {},
        ),
        ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          leading: Image.asset(
            "lib/assets/images/Manu_image/I_DAC.png",
            fit: BoxFit.contain,
            height: 50,
            width: 50,
          ),
          title: Text("  Dac",
              style: GoogleFonts.quicksand(textStyle: TextStyle(fontSize: 18))),
          trailing: Icon(Icons.arrow_forward_outlined),
          onTap: () {},
        ),
      ]),
    );
  }
}
