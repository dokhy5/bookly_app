import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    dio.options.baseUrl = "https://task-two-plum-44.vercel.app/api/products/";
    dio.options.connectTimeout = 5000; // ms
    dio.options.receiveTimeout = 5000; // ms
  }

  Future<List<dynamic>> getProducts() async {
    final response = await dio.get(""); // هنا الـ baseUrl كامل
    return response.data;
  }

  Future<dynamic> getProductById(int id) async {
    final response = await dio.get("$id/"); // https://task-two-plum-44.vercel.app/api/products/{id}/
    return response.data;
  }
}
