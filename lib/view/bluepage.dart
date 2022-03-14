import 'package:coursius_project/component/drawer.dart';
import 'package:coursius_project/utils/color.dart';
import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  final String routeName = "/biru";
  const BluePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: drawer(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Warna.secondary,
        ));
  }
}
