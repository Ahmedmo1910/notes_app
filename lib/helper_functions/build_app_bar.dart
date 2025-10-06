import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: Icon(Icons.person, size: 30),
    actions: [
      Icon(Icons.notifications_none, size: 30),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Icon(Icons.menu, size: 30),
      ),
    ],
  );
}
