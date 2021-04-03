import 'package:rxdart/rxdart.dart';

enum HttpType { GET, LIST, POST, PUT, UPDATE, DELETE }

class HttpProtocol {
  final type;
  HttpProtocol(this.type);
}

/// Basic Generic Service
///
/// Can accept any type of data
/// and pass it to another widget who subcribes to the stream.
abstract class GenericService<T> {
  /// The generic BehaviorSubject that controls the stream.
  final BehaviorSubject<T> _generic;

  GenericService(this._generic);

  /// The stream of the singleton
  Stream get stream$ => _generic.stream;

  /// The current value of the stream
  T get current => _generic.value;

  /// A function responsible of updating the current value of the stream
  update(Function(T) f) {
    _generic.add(f(current));
  }

  // ToDo: Temporal solution to remove the current value.
  delete() {
    _generic.add(null);
  }
}
