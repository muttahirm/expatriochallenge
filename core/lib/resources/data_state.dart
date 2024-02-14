// import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  //Need to changed from DioError to Local Error
  final String? error;

  const DataState({this.data, this.error});
}

class DataStateSuccess<T> extends DataState<T> {
  const DataStateSuccess(T data) : super(data: data);
}

class DataStateFailed<T> extends DataState<T> {
  const DataStateFailed(String error) : super(error: error);
}
