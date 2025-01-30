import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project01/views/home04_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home03UI extends StatefulWidget {
  const Home03UI({super.key});

  @override
  State<Home03UI> createState() => _Home03UIState();
}

class _Home03UIState extends State<Home03UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: const Text(
          'DTI App',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: Colors.grey[400],
            ),
          ),
          IconButton(
            onPressed: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else {
                exit(0);
              }
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.red[400],
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home04UI(),
                  ),
                );
              },
              child: Text(
                "Go to Home04",
                style: TextStyle(fontFamily: "Kanit"),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Southeast Asia University"),
              accountEmail: Text("ww.sau.ac.th"),
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2013/07/13/12/11/caveman-159359_1280.png"),
              ),
              otherAccountsPictures: [
                Image.asset(
                  "assets/images/pic1.png",
                ),
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blueAccent,
                )
              ],
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              trailing: Icon(Icons.numbers),
              title: Text("หน้าหลัก"),
              subtitle: Text("เมนูหน้าหลัก"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.heart_broken_sharp,
                color: Colors.pinkAccent,
              ),
              title: Text("Favorite"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.google,
                color: Colors.blueAccent,
              ),
              title: Text("Google"),
              trailing: Text("Go to"),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.line,
                color: Colors.green,
              ),
              title: Text("Line"),
              trailing: Text("Go to"),
            ),
            ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/pic1.png",
              ),
              title: Text("Fish"),
              trailing: Text("Go to"),
            ),
          ],
        ),
      ),
    );
  }
}
