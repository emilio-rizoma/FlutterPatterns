import 'package:flutter_drive/models/card_model.dart';
import 'package:flutter_drive/services/generic_service.dart';
import 'package:rxdart/rxdart.dart';

/// CardService Class
///
/// This class extends from the GenericService and pass a
/// CardI type as parameter.
class CardService extends GenericService<CardI> {
  CardService(_generic) : super(_generic);
  factory CardService.singleton() {
    return CardService(BehaviorSubject<CardI>.seeded(null));
  }
}

/// Singleton of CardService
///
/// The following line is the same making a new insance of GenericService<CardI>.
/// When extending the GenericService<T> class the code becomes
/// easier to read and to handle.
final cardService = CardService.singleton();

/// Singleton of GenericService<CardI>
///
/// In this example you don't have enough control of the instance.
/// Also, it is nos that clear what is this meant to do.
/// final cardService = GenericService<CardI>(BehaviorSubject<CardI>.seeded(null));
