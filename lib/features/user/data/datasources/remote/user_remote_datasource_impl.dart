import 'package:dio/dio.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/api/user_api_service.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';
import 'user_remote_datasource.dart';

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final UserApiService _userApi;

  UserRemoteDataSourceImpl({required UserApiService userApi})
    : _userApi = userApi;

  @override
  Future<User> getCurrentUser(int userId) async {
    try {
      // Note: This assumes auth is handled separately and user ID is available
      // You may need to inject the current user ID or get it from auth service
      final response = await _userApi.getUserById(userId);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message) => throw Exception(message),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get current user');
    }
  }

  @override
  Future<void> updateProfile(UpdateProfileRequest request) async {
    try {
      final response = await _userApi.updateProfile(request);
      return switch (response) {
        ApiResponseSuccess() => null,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to update profile');
    }
  }

  // @override
  // Future<bool> isUsernameAvailable(String username) async {
  //   try {
  //     final users = await _userApi.checkUsername('eq.$username', 'id');
  //     return users.isEmpty;
  //   } on DioException catch (e) {
  //     throw DioExceptionMapper.mapToException(e, 'Failed to check username');
  //   }
  // }
}
