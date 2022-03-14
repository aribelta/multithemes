import 'package:coursius_project/model/modeldrawer.dart';
import 'package:flutter/material.dart';

// import 'package:testingthemes/utils/color.dart';

drawer() {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              itemCount: drawerHeader.length,
              itemBuilder: (context, position) {
                var _drawerHeader = drawerHeader[position];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage(_drawerHeader.currentAccount),
                            maxRadius: 35,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(_drawerHeader.accountName)),
                        Text(_drawerHeader.accountEmail),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(_drawerHeader.otherAccountPict),
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(_drawerHeader.otherAccountPict),
                    )
                  ],
                );
              }),
        ),
        _listDrawer()
      ],
    ),
  );
}

_listDrawer() {
  return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      shrinkWrap: true,
      itemCount: drawerIcons.length,
      itemBuilder: (context, position) {
        var _icons = drawerIcons[position];
        var _titles = titleList[position];
        if (position == 4) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Divider(thickness: 0.2, color: Colors.grey),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Labels",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          );
        } else {
          return ListTile(
            leading: _icons,
            title: Text(_titles),
          );
        }
      });
}
