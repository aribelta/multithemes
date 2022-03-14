import 'package:coursius_project/routes/navigator.dart';
import 'package:coursius_project/view/bluepage.dart';
import 'package:coursius_project/view/dashboard.dart';
import 'package:coursius_project/view/greenpage.dart';
import 'package:coursius_project/view/loginpage.dart';
import 'package:coursius_project/view/redpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Navi.login,
        getPages: [
          GetPage(name: Navi.login, page: () => const LoginPage()),
          GetPage(name: Navi.home, page: () => const MultipleThemesView()),
          GetPage(name: Navi.merah, page: () => const RedPage()),
          GetPage(name: Navi.biru, page: () => const BluePage()),
          GetPage(name: Navi.hijau, page: () => const GreenPage()),
        ]);
  }
}
