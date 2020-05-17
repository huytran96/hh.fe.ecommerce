import 'package:flutter/material.dart';
import 'package:flutterapp/widget/nav-bar/nav-bar.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
        ],
      ),
    );
  }
}
