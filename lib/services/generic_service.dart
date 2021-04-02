import 'package:rxdart/rxdart.dart';

class CardI {
  String title, details;
  CardI(this.title, this.details);
}

class GenericService<T> {
  final _generic = BehaviorSubject<T>.seeded(null);
  Stream get stream$ => _generic.stream;
  T get current => _generic.value;

  create(Function(T) f) {
    _generic.add(f(current));
  }

  delete() {
    _generic.add(null);
  }
}

final integerService = GenericService<int>();
final cardService = GenericService<CardI>();
