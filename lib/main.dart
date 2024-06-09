import 'package:flutter/material.dart';
import 'package:flutter_application_iem/All_pages/Splash_page.dart';
import 'package:flutter_application_iem/Controller/controller.dart';

import 'package:get/get.dart';

void main() {
  Get.put(CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpleshS(),
    );
  }
}
