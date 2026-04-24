import 'package:dio/dio.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/auth/data/datasources/remote/auth_remote_datasource.dart';
import 'package:sep490_mo/features/auth/data/models/auth_models.dart';
import 'api/auth_api_service.dart';


class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiService _authApi;

  AuthRemoteDataSourceImpl({
    required AuthApiService authApi,
  })  : _authApi = authApi;

  @override
  Future<void> signUp(SignUpRequest request) async {
    try {
      // Step 1: Create auth user
      final response = await _authApi.signUp(request);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Sign up failed');
    }
  }

  @override
  Future<SignInResponse> signIn(SignInRequest request) async {
    try {
      final response =  await _authApi.signIn(request);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message) => throw Exception(message),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Sign in failed');
    }
  }

  @override
  Future<void> verify(String email) async {
    try {
      // Step 1: Create auth user
      final response = await _authApi.verify(email);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Sign up failed');
    }
  }

}
