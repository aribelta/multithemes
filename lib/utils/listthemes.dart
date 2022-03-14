import 'package:coursius_project/utils/color.dart';
import 'package:flutter/material.dart';

List<ThemeData> getThemes() {
  return [
    ThemeData(backgroundColor: Warna.primary),
    ThemeData(backgroundColor: Warna.secondary),
    ThemeData(backgroundColor: Warna.accent)
  ];
}
