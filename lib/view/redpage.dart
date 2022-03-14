import 'package:carousel_slider/carousel_slider.dart';
import 'package:coursius_project/component/drawer.dart';
import 'package:coursius_project/utils/color.dart';
import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  const RedPage({Key? key}) : super(key: key);

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  int _curent = 0;

  final List<String> _image = [
    "assets/images/learningone.jpg",
    "assets/images/learningtwo.jpg",
    "assets/images/learningthree.jpg",
    "assets/images/learningfour.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: drawer(),
        body: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Warna.primary,
          ),
          CarouselSlider(
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _curent = index;
                  });
                }),
            items: _image.map((image) {
              return Builder(builder: (BuildContext context) {
                return Stack(
                  children: [
                    SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width - 10,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(image,
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 80,
                                  fit: BoxFit.cover),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              });
            }).toList(),
          )
        ]));
  }
}
