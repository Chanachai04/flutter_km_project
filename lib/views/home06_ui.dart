import 'package:flutter/material.dart';
import 'package:flutter_km_project01/widgets/show_a_ui.dart';
import 'package:flutter_km_project01/widgets/show_b_ui.dart';
import 'package:flutter_km_project01/widgets/show_c_ui.dart';
import 'package:flutter_km_project01/widgets/show_d_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home06UI extends StatefulWidget {
  const Home06UI({super.key});

  @override
  State<Home06UI> createState() => _Home06UIState();
}

class _Home06UIState extends State<Home06UI> {
  int _selectedIndex = 0;
  List showUI = [
    ShowAUI(),
    ShowBUI(),
    ShowCUI(),
    ShowDUI(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('KM Bottom Navbar 02'),
        centerTitle: true,
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.facebook),
              title: Text("Facebook"),
              selectedColor: Colors.blue),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.google),
              title: Text("Goole"),
              selectedColor: Colors.deepOrangeAccent),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.youtube),
              title: Text("Youtube"),
              selectedColor: Colors.red),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.twitter),
              title: Text("Twitter"),
              selectedColor: Colors.blueAccent),
        ],
      ),
      body: showUI[_selectedIndex],
    );
  }
}
