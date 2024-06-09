import 'package:flutter/material.dart';
import 'package:flutter_application_iem/All_pages/AppDrower_page.dart';
import 'package:flutter_application_iem/All_pages/HC_Page/Home_page_body.dart';

import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final searchTxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.2),
          title: Center(
            child: Text("KineticSonic",
                textAlign: TextAlign.center,
                style: GoogleFonts.rougeScript(
                    textStyle: TextStyle(fontSize: 30))),
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  String searchText = searchTxt.text;
                  showDiolog(context);
                  print("This is text" + searchText);
                  searchTxt.clear();
                },
                icon: Icon(Icons.search))
          ],
        ),
        drawer: MyAppDrower(),
        body: HomepageBody());
  }

  Future<void> showDiolog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          alignment: Alignment.topCenter,
          contentPadding: EdgeInsets.only(top: 50),
          content: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90), color: Colors.white),
            //height: 50,
            //alignment: Alignment.topCenter,

            child: Row(
              children: [
                Expanded(
                  //width: MediaQuery.of(context).size.width / 2,
                  child: TextField(
                    controller: searchTxt,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: "Enter title",
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search_rounded)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
