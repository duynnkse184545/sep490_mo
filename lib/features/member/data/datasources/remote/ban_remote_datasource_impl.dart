import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/ban_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/ban_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

class BanRemoteDataSourceImpl implements BanRemoteDataSource {
  final BanApiService _banApi;

  BanRemoteDataSourceImpl({required BanApiService banApi}) : _banApi = banApi;

  @override
  Future<List<Member>> getBannedMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _banApi.getBannedMember(
        fanHubId,
        pageNo,
        pageSize,
        sortBy,
      );

      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get banned members');
    } catch (e, stack) {
      debugPrint('BanRemoteDataSourceImpl.getBannedMembers error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> banMember(BanRequest banRequest) async {
    try {
      final response = await _banApi.banMember(banRequest);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to ban member');
    } catch (e, stack) {
      debugPrint('BanRemoteDataSourceImpl.banMember error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> unbanMember(int banId) async {
    try {
      final response = await _banApi.unbanMember(banId);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to unban member');
    } catch (e, stack) {
      debugPrint('BanRemoteDataSourceImpl.unbanMember error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
