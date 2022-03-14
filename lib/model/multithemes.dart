// ignore_for_file: import_of_legacy_library_into_null_safe, unused_import

import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

class ThemeModels {
  final int index;
  final String title;

  ThemeModels({required this.index, required this.title});
}

class MultipleThemesViewModel extends BaseViewModel {
  List<ThemeModels> get themes => List<ThemeModels>.generate(
      3, (index) => ThemeModels(index: index, title: _getTitleForIndex(index)));
}

String _getTitleForIndex(int index) {
  switch (index) {
    case 0:
      return "Merah";
    case 1:
      return "Biru";
    case 2:
      return "Hijau";
  }
  return "Not Found";
}
