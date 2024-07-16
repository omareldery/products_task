import 'package:dio/dio.dart';

class DioService {
  late Dio _dio;

  DioService() {
    _dio = Dio();
  }

  Future<Response<dynamic>> fetchProducts() async {
    try {
      return await _dio.get('https://dummyjson.com/products/');
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}
