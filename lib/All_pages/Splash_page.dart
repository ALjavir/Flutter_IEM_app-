import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_iem/All_pages/Navbar_page.dart';

import 'package:google_fonts/google_fonts.dart';

class SpleshS extends StatefulWidget {
  const SpleshS({Key? key}) : super(key: key);

  @override
  State<SpleshS> createState() => _SpleshSState();
}

class _SpleshSState extends State<SpleshS> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Navbar()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/assets/images/s1.jpg"),
                fit: BoxFit.cover,
                opacity: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  // border: Border.all(
                  //   color: Colors.white.withOpacity(0.2),
                  //   width: 2.0,
                  // ),
                ),
                child: Container(
                  //alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.4),
                  child: Text(
                    "KineticSonic",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rougeScript(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            shadows: [
                          Shadow(
                            blurRadius: 8.0,
                            color: Colors.white,
                          ),
                        ])),
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                "Your Ultimate Destination for Highend Audio",
                style: GoogleFonts.rosarivo(
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                "Discover, Compare, and Find Your Perfect Sound Companion",
                textAlign: TextAlign.center,
                style: GoogleFonts.quicksand(
                    textStyle: TextStyle(color: Colors.white, fontSize: 10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
