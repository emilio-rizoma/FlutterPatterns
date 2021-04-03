import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final GestureTapCallback action;
  final String title;
  ButtonWidget(this.title, {@required this.action});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.indigo[900]))),
            foregroundColor:
                MaterialStateProperty.all<Color>(Colors.indigo[900]),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            elevation: MaterialStateProperty.all(0)),
        child: Text(this.title),
        onPressed: this.action);
  }
}
