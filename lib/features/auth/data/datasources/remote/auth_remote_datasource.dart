import 'package:dio/dio.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/auth/data/models/auth_models.dart';
import 'auth_api_service.dart';

abstract class AuthRemoteDataSource {
  Future<void> signUp(SignUpRequest request);

  Future<SignInResponse> signIn(SignInRequest request);

  Future<void> signOut();

  Future<void> verify(String email);

}

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

      return switch (response) {
        ApiResponseSuccess() => null,
        ApiResponseFailure(:final message, :final error) =>
        throw ServerException(message, error),
      };
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
  Future<void> signOut() async {
    try {
      await _authApi.signOut();
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Sign out failed');
    }
  }

  @override
  Future<void> verify(String email) async {
    try {
      // Step 1: Create auth user
      final response = await _authApi.verify(email);

      return switch (response) {
        ApiResponseSuccess() => null,
        ApiResponseFailure(:final message, :final error) =>
        throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Sign up failed');
    }
  }

}
