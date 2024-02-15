part of 'di.dart';

abstract class BaseEntityCache<T extends Object> {
  //fields and variables
  T? _data;
  //methods
  bool hasData() => (_data != null);

  T? getCacheddata() => _data;

  void setData(T data) {
    _data = data;
  }

  void resetCachedData() {
    _data = null;
  }
}
