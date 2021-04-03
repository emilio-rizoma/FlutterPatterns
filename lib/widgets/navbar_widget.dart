import 'package:flutter/material.dart';

Widget myAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.grey[100],
    elevation: 0,
    title: Text(title),
    textTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
    actionsIconTheme: IconThemeData(color: Colors.black),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          //action for search icon button
        },
      ),
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          //action for user icon button
        },
      )
    ],
  );
}
