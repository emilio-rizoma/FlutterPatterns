import 'package:rxdart/rxdart.dart';

enum HttpType { GET, LIST, POST, PUT, UPDATE, DELETE }

class HttpProtocol {
  final type;
  HttpProtocol(this.type);
}

class GenericService<T> {
  final BehaviorSubject<T> _generic;
  GenericService(this._generic);
  Stream get stream$ => _generic.stream;
  T get current => _generic.value;

  create(Function(T) f) {
    _generic.add(f(current));
  }

  delete() {
    _generic.add(null);
  }
}
