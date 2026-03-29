import 'package:dio/dio.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/features/auth/data/models/auth_models.dart';
import 'auth_api_service.dart';

abstract class AuthRemoteDataSource {
  //Future<AuthResponse> signUp(SignUpRequest request);

  Future<SignInResponse> signIn(SignInRequest request);

  Future<void> signOut();

}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiService _authApi;

  AuthRemoteDataSourceImpl({
    required AuthApiService authApi,
  })  : _authApi = authApi;

  // @override
  // Future<AuthResponse> signUp(SignUpRequest request) async {
  //   try {
  //     // Step 1: Create auth user
  //     final authResponse = await _authApi.signUp(request);
  //
  //     // Step 2: Create profile
  //     final profileRequest = CreateProfileRequest(
  //       id: authResponse.user.id,
  //       email: request.email,
  //       username: request.username,
  //       fullName: request.fullName,
  //     );
  //
  //     await _userApi.createProfile(profileRequest);
  //
  //     return authResponse;
  //   } on DioException catch (e) {
  //     throw DioExceptionMapper.mapToException(e, 'Sign up failed');
  //   }
  // }

  @override
  Future<SignInResponse> signIn(SignInRequest request) async {
    try {
      final response =  await _authApi.signIn(request);
      return response.data;
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

}
