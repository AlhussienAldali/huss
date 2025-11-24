import 'package:dio/dio.dart';

class Network {

  final Dio _dio = Dio();
get(){
  return _dio.get("");
}





}