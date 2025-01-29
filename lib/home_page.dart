import 'package:bottom_bar/call_page.dart';
import 'package:bottom_bar/gallery_page.dart';
import 'package:bottom_bar/messages_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedind = 0;

  void onItemTapped(int ind) {
    setState(() {
      selectedind = ind;
    });
  }

  List<Widget> pages = <Widget>[
    GalleryPage(),
    MessagePage(),
    CallPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav"),
      ),
      body: Center(
        child: pages.elementAt(selectedind),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_album),
              label: "Gallery",
              backgroundColor: Colors.pink),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Message",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Call",
              backgroundColor: Colors.black)
        ],
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.cyan,
        iconSize: 40,
        currentIndex: selectedind,
        onTap: onItemTapped,
      ),
    );
  }
}
