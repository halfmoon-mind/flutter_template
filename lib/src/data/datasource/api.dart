import 'package:dio/dio.dart';

abstract interface class ApiService {
  // get api
  dynamic get(
    String url, {
    required Map<String, dynamic> queryParameters,
  });

  // post api
  dynamic post(
    String url, {
    required Map<String, dynamic> queryParameters,
    dynamic data,
  });

  // put api
  dynamic put(
    String url, {
    required Map<String, dynamic> queryParameters,
    dynamic data,
  });

  // delete api
  dynamic delete(
    String url, {
    required Map<String, dynamic> queryParameters,
    dynamic data,
  });

  // patch api
  dynamic patch(
    String url, {
    required Map<String, dynamic> queryParameters,
    dynamic data,
  });
}

class ApiServiceImpl implements ApiService {
  final Dio dio = Dio();

  ApiServiceImpl() {
    final requestOptions = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      headers: {'Content-Type': 'application/json'},
    );
    dio.options = requestOptions;
  }

  @override
  dynamic get(String url,
      {required Map<String, dynamic> queryParameters}) async {
    try {
      final response = await dio.get(url, queryParameters: queryParameters);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  dynamic post(String url,
      {required Map<String, dynamic> queryParameters, dynamic data}) async {
    try {
      final response =
          await dio.post(url, queryParameters: queryParameters, data: data);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  dynamic put(String url,
      {required Map<String, dynamic> queryParameters, dynamic data}) async {
    try {
      final response =
          await dio.put(url, queryParameters: queryParameters, data: data);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  dynamic delete(String url,
      {required Map<String, dynamic> queryParameters, dynamic data}) async {
    try {
      final response =
          await dio.delete(url, queryParameters: queryParameters, data: data);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  dynamic patch(String url,
      {required Map<String, dynamic> queryParameters, dynamic data}) async {
    try {
      final response =
          await dio.patch(url, queryParameters: queryParameters, data: data);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
