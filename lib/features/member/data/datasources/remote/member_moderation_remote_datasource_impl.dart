import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sep490_mo/core/error/dio_exception_mapper.dart';
import 'package:sep490_mo/core/error/exceptions.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/member_moderation_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_moderation_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

class MemberModerationRemoteDatasourceImpl implements MemberModerationRemoteDatasource {
  final MemberModerationApiService _moderationApi;

  MemberModerationRemoteDatasourceImpl({required MemberModerationApiService moderationApi})
      : _moderationApi = moderationApi;

  @override
  Future<List<Member>> getPendingMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _moderationApi.getPendingMembers(
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
      throw DioExceptionMapper.mapToException(e, 'Failed to get pending members');
    } catch (e, stack) {
      debugPrint('MemberModerationRemoteDatasourceImpl.getPendingMembers error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<List<MemberWithReports>> getMemberWithReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) async {
    try {
      final response = await _moderationApi.getMemberWithReports(
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
      throw DioExceptionMapper.mapToException(e, 'Failed to get members with reports');
    } catch (e, stack) {
      debugPrint('MemberModerationRemoteDatasourceImpl.getMemberWithReports error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> reviewMember(int postId, MemberStatus status) async {
    try {
      final response = await _moderationApi.reviewMember(postId, status);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to review member');
    } catch (e, stack) {
      debugPrint('MemberModerationRemoteDatasourceImpl.reviewMember error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> resolveReport(int reportId, String resolveMessage) async {
    try {
      final response = await _moderationApi.resolveReport(reportId, resolveMessage);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to resolve report');
    } catch (e, stack) {
      debugPrint('MemberModerationRemoteDatasourceImpl.resolveReport error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }

  @override
  Future<void> resolveReportBulk(List<int> reportIds, String resolveMessage) async {
    try {
      final response = await _moderationApi.resolveReportBulk(reportIds, resolveMessage);

      switch (response) {
        case ApiResponseSuccess():
          return;
        case ApiResponseFailure(:final message, :final error):
          throw ServerException(message, error);
      }
    } on DioException catch (e) {
      throw DioExceptionMapper.mapToException(e, 'Failed to bulk resolve reports');
    } catch (e, stack) {
      debugPrint('MemberModerationRemoteDatasourceImpl.resolveReportBulk error: $e');
      debugPrint('Stack: $stack');
      rethrow;
    }
  }
}
