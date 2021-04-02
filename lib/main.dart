import 'package:flutter/material.dart';
import 'package:flutter_drive/views/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDos App',
      theme:
          ThemeData(fontFamily: 'FredokaOne', accentColor: Colors.indigo[800]),
      home: Container(
        child: HomeView(),
      ),
    );
  }
}
