import 'package:flutter_drive/services/generic_service.dart';
import 'package:rxdart/rxdart.dart';

class CardI {
  String title, details;
  CardI(this.title, this.details);
}

final cardService = GenericService<CardI>(BehaviorSubject<CardI>.seeded(null));
