import 'package:flutter/material.dart';

Widget myAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.grey[900],
    //background color of Appbar to green
    title: Text(title),
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
