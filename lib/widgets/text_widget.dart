import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title, detail;
  TextWidget(this.title, this.detail);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                this.title,
                style: TextStyle(fontSize: 43, color: Colors.indigo[900]),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
            alignment: Alignment.centerLeft,
            child: Text(
              this.detail,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
