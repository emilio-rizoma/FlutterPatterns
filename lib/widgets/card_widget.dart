import 'package:flutter/material.dart';
import 'package:flutter_drive/services/generic_service.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CardI>(
      stream: cardService.stream$,
      builder: (BuildContext context, AsyncSnapshot<CardI> snap) {
        return Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                border: Border.all(
                    color: Theme.of(context).accentColor,
                    width: 1.5,
                    style: BorderStyle.solid)),
            child: Column(children: [
              Text('${snap.data != null ? snap.data.title : "No title"}'),
              Text('${snap.data != null ? snap.data.details : "No details"}')
            ]));
      },
    );
  }
}
