import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/config/api_config.dart';
import 'package:sep490_mo/core/constants/api_constants.dart';
import 'package:sep490_mo/core/network/api_client.dart';
import 'package:sep490_mo/core/network/auth_interceptor.dart';
import 'package:sep490_mo/core/network/network_interceptor.dart';
import 'package:sep490_mo/core/network/network_provider.dart';
import 'package:sep490_mo/core/services/token_service.dart';


part 'api_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  return Dio(
    BaseOptions(
      baseUrl: ApiConfig.projectUrl,
      connectTimeout: ApiConfig.connectTimeout,
      receiveTimeout: ApiConfig.receiveTimeout,
      headers: ApiConfig.defaultHeaders,
      contentType: ApiConstants.contentTypeJson,
      responseType: ResponseType.json,
    ),
  );
}

@riverpod
FlutterSecureStorage flutterSecureStorage(Ref ref) {
  const androidOptions = AndroidOptions();

  const iosOptions = IOSOptions(
    accessibility: KeychainAccessibility.first_unlock,
  );

  return const FlutterSecureStorage(
    aOptions: androidOptions,
    iOptions: iosOptions,
  );
}

@riverpod
TokenService tokenService(Ref ref) =>
    TokenServiceImpl(ref.watch(flutterSecureStorageProvider));

@riverpod
AuthInterceptor authInterceptor(Ref ref) {
  return AuthInterceptor(
    tokenService: ref.watch(tokenServiceProvider),
    dio: ref.watch(dioProvider),
  );
}

@riverpod
NetworkInterceptor networkInterceptor(Ref ref) {
  return NetworkInterceptor(networkInfo: ref.watch(networkInfoProvider));
}

@riverpod
ApiClient apiClient(Ref ref) {
  return ApiClient(
    dioInstance: ref.watch(dioProvider),
    networkInterceptor: ref.watch(networkInterceptorProvider),
    authInterceptor: ref.watch(authInterceptorProvider),
  );
}
