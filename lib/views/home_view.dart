import 'package:flutter/material.dart';
import 'package:flutter_drive/services/generic_service.dart';
import 'package:flutter_drive/widgets/card_widget.dart';
import 'package:flutter_drive/widgets/navbar_widget.dart';

// class CardI {
//   String title, details;
//   Duration dur;
//   List<String> tags;
//   CardI(this.title, this.details, this.dur, this.tags);
// }

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final scheduleCard = ToDoCard();
    return Scaffold(
        appBar: myAppBar('ToDos'),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            // children: toDo1,
            children: [Center(child: CardWidget())],
          ),
        ),
        floatingActionButton: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Row(children: [
            ElevatedButton(
                child: Text('Card A'),
                onPressed: () => cardService.create(
                    (x) => new CardI("Card A", "Primera tarjeta genérica."))),
            ElevatedButton(
                child: Text('Card B'),
                onPressed: () => cardService.create(
                    (x) => new CardI("Card B", "Segunda tarjeta genérica."))),
            ElevatedButton(
                child: Text('Delete'), onPressed: () => cardService.delete())
          ]),
        ));
  }
}
