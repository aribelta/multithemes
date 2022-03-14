// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:coursius_project/component/colorbutton.dart';
import 'package:coursius_project/controller/controllerdashoard.dart';
import 'package:coursius_project/model/multithemes.dart';
import 'package:coursius_project/routes/navigator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

class MultipleThemesView extends StatelessWidget {
  const MultipleThemesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ViewModelBuilder<MultipleThemesViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          backgroundColor: theme.backgroundColor,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 350),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Wrap(
                        spacing: 30,
                        runSpacing: 20,
                        alignment: WrapAlignment.start,
                        direction: Axis.horizontal,
                        children: _mapping(context, model),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
      viewModelBuilder: () => MultipleThemesViewModel(),
    );
  }

  _mapping(BuildContext context, MultipleThemesViewModel model) {
    return model.themes
        .map((themeData) => GestureDetector(
              onTap: () {
                if (themeData.title == "Merah") {
                  Navigator.pushNamed(context, Navi.merah);
                } else if (themeData.title == "Biru") {
                  Navigator.pushNamed(context, Navi.biru);
                } else if (themeData.title == "Hijau") {
                  Navigator.pushNamed(context, Navi.hijau);
                }
                logicControl(context, themeData);
              },
              child: colorButton(themeData.title),
            ))
        .toList();
  }
}
