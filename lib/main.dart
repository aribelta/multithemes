import 'package:coursius_project/routes/navigator.dart';
import 'package:coursius_project/view/bluepage.dart';
import 'package:coursius_project/view/dashboard.dart';
import 'package:coursius_project/view/greenpage.dart';
import 'package:coursius_project/view/loginpage.dart';
import 'package:coursius_project/view/redpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        Navi.home: (context) => MultipleThemesView(),
        Navi.merah: (context) => RedPage(),
        Navi.biru: (context) => BluePage(),
        Navi.hijau: (context) => GreenPage()
      },
    );
  }
}
