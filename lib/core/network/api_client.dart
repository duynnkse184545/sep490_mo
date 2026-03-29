import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'auth_interceptor.dart';
import 'network_interceptor.dart';

class ApiClient {
  final Dio dio;
  final NetworkInterceptor _networkInterceptor;
  final AuthInterceptor _authInterceptor;

  ApiClient({
    required Dio dioInstance,
    required NetworkInterceptor networkInterceptor,
    required AuthInterceptor authInterceptor,
  })  : dio = dioInstance,
        _networkInterceptor = networkInterceptor,
        _authInterceptor = authInterceptor {
    _setupInterceptors();
  }

  /// Setup Dio interceptors
  void _setupInterceptors() {
    // Order matters! Network check -> Auth -> Request
    dio.interceptors.add(_networkInterceptor);
    dio.interceptors.add(_authInterceptor);

    // Add logging interceptor with detailed request/response output
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
        error: true,
        logPrint: (obj) {
          if (kDebugMode) print(obj);
        },
      ),
    );
  }
}