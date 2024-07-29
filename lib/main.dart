import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

void main() {
  runApp(const TODO());
}

class TODO extends StatelessWidget {
  const TODO({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: kFont,
      ),
      home: Scaffold(),
    );
  }
}
