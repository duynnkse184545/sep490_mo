import 'package:sep490_mo/core/constants/api_constants.dart';

class ApiConfig {
  // Replace with your Supabase project details
  static const String projectUrl = 'https://vtuber-fanhub-bsc3arfzhqhahshy.southeastasia-01.azurewebsites.net/vhub/api/v1';

  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // Headers
  static Map<String, String> get defaultHeaders => {
    ApiConstants.headerContentType: ApiConstants.contentTypeJson,
  };

  static Map<String, String> authHeaders(String token) => {
    ...defaultHeaders,
    ApiConstants.headerAuthorization: 'Bearer $token',
  };
}