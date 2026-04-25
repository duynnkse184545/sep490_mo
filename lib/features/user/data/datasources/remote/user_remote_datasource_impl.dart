import 'package:dio/dio.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/api/user_api_service.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';
import 'user_remote_datasource.dart';
import 'dart:io';

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final UserApiService _userApi;

  UserRemoteDataSourceImpl({required UserApiService userApi})
    : _userApi = userApi;

  @override
  Future<User> getUserById(int userId) async {
    try {
      final response = await _userApi.getUserById(userId);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) => throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get user');
    }
  }

  @override
  Future<List<Badge>> getBadges(int userId) async {
    try {
      final response = await _userApi.getBadges(userId);
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) => throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get badges');
    }
  }

  @override
  Future<List<Frame>> getFrames() async {
    try {
      final response = await _userApi.getFrames();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) => throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get frames');
    }
  }

  @override
  Future<List<Frame>> getMyItems() async {
    try {
      final response = await _userApi.getMyItems();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) => throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get my items');
    }
  }

  @override
  Future<DailyMission> getDailyMission() async {
    try {
      final response = await _userApi.getDailyMission();
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) => throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get daily mission');
    }
  }

  @override
  Future<void> updateAvatarFrame({String? frameName, required File avatarFile}) async {
    try {
      final fileName = avatarFile.path.split('/').last;
      final multipartFile = await MultipartFile.fromFile(
        avatarFile.path,
        filename: fileName,
      );

      final response = await _userApi.updateAvatarFrame(frameName, multipartFile);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to update avatar frame');
    }
  }

  @override
  Future<void> setOshi(String oshiUsername) async {
    try {
      final response = await _userApi.setOshi(oshiUsername);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to set oshi');
    }
  }

  @override
  Future<void> selectDisplayBadges(List<int> userBadgeIds) async {
    try {
      final response = await _userApi.selectDisplay(userBadgeIds);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to select display badges');
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
}
