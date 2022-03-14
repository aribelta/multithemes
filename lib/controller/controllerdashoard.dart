import 'package:coursius_project/model/multithemes.dart';
import 'package:flutter/cupertino.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked_themes/stacked_themes.dart';

logicControl(BuildContext context, ThemeModels themeData) {
  return getThemeManager(context).selectThemeAtIndex(themeData.index);
}
