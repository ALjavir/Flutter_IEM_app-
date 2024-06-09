import 'package:flutter/material.dart';

class Appbarp extends StatelessWidget {
  const Appbarp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar: AppBar(
      //   title: Text("Homepage"),
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      // );
      appBar: AppBar(
        title: Text("Homepage"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
    );
  }
}
