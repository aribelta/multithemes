import 'package:coursius_project/utils/color.dart';
import 'package:flutter/material.dart';

Widget colorButton(String titles) {
  return Container(
    width: 80,
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: _variantColors(titles)),
    child: Center(child: Text(titles)),
  );
}

_variantColors(String titles) {
  // ignore: unused_local_variable
  Color _variantColors = Colors.grey;
  if (titles == "Merah") {
    return _variantColors = Warna.primary;
  } else if (titles == "Biru") {
    return _variantColors = Warna.secondary;
  } else {
    return _variantColors = Warna.accent;
  }
}
