import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/member_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

class MemberRemoteDatasourceImpl implements MemberRemoteDatasource {
  final MemberApiService _memberApi;

  MemberRemoteDatasourceImpl({required MemberApiService memberApi})
      : _memberApi = memberApi;

  @override
  Future<MemberCheckingResponse> isMember(int fanHubId) async {
    try {
      final response = await _memberApi.isMember(fanHubId);
      debugPrint('MemberRemoteDatasourceImpl.isMember: $response');
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to check membership');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<Member>> getMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
    String? username,
  }) async {
    try {
      final response = await _memberApi.getMembers(
        fanHubId,
        pageNo,
        pageSize,
        sortBy,
        username,
      );
      debugPrint('MemberRemoteDatasourceImpl.getMembers: $response');
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get members');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<Member> getMemberDetail(int fanHubMemberId) async {
    try {
      final response = await _memberApi.getMemberDetail(fanHubMemberId);
      debugPrint('MemberRemoteDatasourceImpl.getMemberDetail: $response');
      return switch (response) {
        ApiResponseSuccess(:final data) => data,
        ApiResponseFailure(:final message, :final error) =>
          throw ServerException(message, error),
      };
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to get member detail');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> joinFanHub(int fanHubId) async {
    try {
      final response = await _memberApi.joinFanHub(fanHubId);
      debugPrint('MemberRemoteDatasourceImpl.joinFanHub: $response');
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to join fan hub');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> leaveFanHub(int fanHubId) async {
    try {
      final response = await _memberApi.leaveFanHub(fanHubId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to leave FanHub');
    } catch (e, stack) {
      debugPrint('MemberRemoteDatasourceImpl.leaveFanHub error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> kickMember(int fanHubId, int memberId) async {
    try {
      final response = await _memberApi.kickMember(fanHubId, memberId);
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to kick member');
    } catch (e, stack) {
      debugPrint('MemberRemoteDatasourceImpl.kickMember error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> setModerator(int fanHubId, List<int>? memberIds) async {
    try {
      final response = await _memberApi.setModerator(fanHubId, memberIds);
      debugPrint('MemberRemoteDatasourceImpl.setModerator: $response');
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to set moderator');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> removeModerator(int fanHubId, List<int>? memberIds) async {
    try {
      final response = await _memberApi.removeModerator(fanHubId, memberIds);
      debugPrint('MemberRemoteDatasourceImpl.removeModerator: $response');
      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to remove moderator');
    } catch (e, stack) {
      debugPrint('Other error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
