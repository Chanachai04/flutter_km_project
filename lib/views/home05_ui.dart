import 'package:flutter/material.dart';
import 'package:flutter_km_project01/widgets/show_a_ui.dart';
import 'package:flutter_km_project01/widgets/show_b_ui.dart';
import 'package:flutter_km_project01/widgets/show_c_ui.dart';
import 'package:flutter_km_project01/widgets/show_d_ui.dart';
import 'package:flutter_km_project01/widgets/show_e_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home05UI extends StatefulWidget {
  const Home05UI({super.key});

  @override
  State<Home05UI> createState() => _Home05UIState();
}

class _Home05UIState extends State<Home05UI> {
  int _selectedIndex = 2;
  List showUI = [
    ShowAUI(),
    ShowBUI(),
    ShowCUI(),
    ShowDUI(),
    ShowEUI(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('KM Bottom Navbar 01'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.facebook),
            label: "Facebook",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.google),
            label: "Google",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.youtube),
            label: "Youtube",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.twitter),
            label: "Twitter",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.line),
            label: "Line",
          ),
        ],
      ),
      body: showUI[_selectedIndex],
    );
  }
}
