// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_km_project01/views/home03_ui.dart';
import 'package:flutter_km_project01/views/home05_ui.dart';
import 'package:flutter_km_project01/views/home06_ui.dart';
import 'package:flutter_km_project01/views/introduction_screen_ui.dart';
import 'package:flutter_km_project01/views/splash_screen_ui.dart';

void main() {
  runApp(const FlutterKM());
}

class FlutterKM extends StatefulWidget {
  const FlutterKM({super.key});

  @override
  State<FlutterKM> createState() => _FlutterKMState();
}

class _FlutterKMState extends State<FlutterKM> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home06UI(),
    );
  }
}
