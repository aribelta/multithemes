import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController {
  static bool _obscureTextController = false;
  static Icon _changingIcons = Icon(Icons.visibility_off_outlined);

  obscureTextChanging() {
    if (_obscureTextController == true) {
      _obscureTextController = false;
      update();
      return _obscureTextController;
    } else {
      _obscureTextController = true;
      update();
      return _obscureTextController;
    }
  }

  iconsChanging() {
    print("_obscureTextController: ${_obscureTextController}");
    if (_obscureTextController == true) {
      _changingIcons = Icon(Icons.visibility);
      update();
      print("visibility:true");
      return _changingIcons;
    } else {
      _changingIcons = Icon(Icons.visibility_off_outlined);
      update();
      print("visibility:false");
      return _changingIcons;
    }
  }
}
