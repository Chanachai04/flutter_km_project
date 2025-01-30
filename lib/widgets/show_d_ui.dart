import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowDUI extends StatelessWidget {
  const ShowDUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          FontAwesomeIcons.twitter,
          size: MediaQuery.of(context).size.width * 0.5,
          color: Colors.blue,
        ),
      ),
    );
  }
}
