import 'package:flutter/material.dart';
import 'package:flutter_drive/models/card_model.dart';
import 'package:flutter_drive/widgets/button_widget.dart';
import 'package:flutter_drive/widgets/card_widget.dart';
import 'package:flutter_drive/widgets/navbar_widget.dart';
import 'package:flutter_drive/widgets/text_widget.dart';

class HomeView extends StatelessWidget {
  final cardA = new CardI("Card A", "Primera tarjeta genérica.");
  final cardB = new CardI("Card B", "Segunda tarjeta genérica.");
  final lorem =
      "Lo-fi tattooed four dollar toast trust fund. Umami VHS salvia normcore, affogato green juice pabst twee pitchfork vexillologist fam tacos. Vice disrupt subway tile chambray, squid pop-up semiotics. Single-origin coffee flannel lomo seitan, taiyaki pour-over photo booth pug roof party gastropub cloud bread YOLO four loko pitchfork.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar('ToDos'),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [TextWidget('ToDos', lorem), CardWidget()],
          ),
        ),
        backgroundColor: Colors.grey[100],
        persistentFooterButtons: [
          ButtonWidget("Card A",
              action: () => cardService.create((x) => cardA)),
          ButtonWidget('Card B',
              action: () => cardService.create((x) => cardB)),
          ButtonWidget('Delete', action: () => cardService.delete())
        ]);
  }
}
