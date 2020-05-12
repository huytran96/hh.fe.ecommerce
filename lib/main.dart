import 'package:flutter/material.dart';
import 'package:flutterapp/screen/home-page/hom-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(child: HomePage())
    );
  }
}
