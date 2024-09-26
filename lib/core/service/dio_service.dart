import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    // Ixtiyoriy: Sizning Dio misolni sozlang
    _dio.options.baseUrl = 'https://api.probox.uz'; // O'z bazangiz URL ni qo'shing
    _dio.options.connectTimeout = 5000 as Duration?; // 5 soniya
    _dio.options.receiveTimeout = 3000 as Duration?; // 3 soniya
  }

  Future<Response> get(String endpoint) async {
    try {
      final response = await _dio.get(endpoint);
      return response;
    } catch (e) {
      // Xatoni boshqarish
      throw Exception('Ma\'lumotni yuklab olishda xato: $e');
    }
  }

  Future<Response> post(String endpoint, dynamic data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      throw Exception('Ma\'lumotni yuborishda xato: $e');
    }
  }

  // Future<Response> put(String endpoint, dynamic data) async {
  //   try {
  //     final response = await _dio.put(endpoint, data: data);
  //     return response;
  //   } catch (e) {
  //     throw Exception('Ma\'lumotni yangilashda xato: $e');
  //   }
  // }
  //
  // Future<Response> delete(String endpoint) async {
  //   try {
  //     final response = await _dio.delete(endpoint);
  //     return response;
  //   } catch (e) {
  //     throw Exception('Ma\'lumotni o\'chirishda xato: $e');
  //   }
  // }
}
