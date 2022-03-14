// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Icon> drawerIcons = [
  const Icon(Icons.folder),
  const Icon(Icons.people_alt_outlined),
  const Icon(Icons.schedule),
  const Icon(Icons.delete_outline_sharp),
  const Icon(Icons.delete_outline_sharp),
  const Icon(Icons.bookmark)
];

List<String> titleList = [
  "My File",
  "Shared with me",
  "Recent",
  "Trash",
  " ",
  "Family",
];

class Drawers {
  final String currentAccount;
  final String otherAccountPict;
  final String accountName;
  final String accountEmail;

  Drawers(
      {required this.currentAccount,
      required this.otherAccountPict,
      required this.accountName,
      required this.accountEmail});
}

List<Drawers> drawerHeader = [
  Drawers(
      currentAccount: "assets/images/coursius.png",
      otherAccountPict: "assets/images/coursius2.png",
      accountName: "Ananda Ribelta",
      accountEmail: "anandaribelta@coursius.com")
];
