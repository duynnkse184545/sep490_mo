import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_moderation_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';
import 'package:sep490_mo/features/member/data/repositories/member_moderation_repository.dart';

class MemberModerationRepositoryImpl implements MemberModerationRepository {
  final MemberModerationRemoteDatasource _remoteDataSource;

  MemberModerationRepositoryImpl({
    required MemberModerationRemoteDatasource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<Member>> getPendingMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getPendingMembers(
        fanHubId: fanHubId,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskResult<List<MemberWithReports>> getMemberWithReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getMemberWithReports(
        fanHubId: fanHubId,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskVoid reviewMember(int postId, MemberStatus status) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.reviewMember(postId, status);
    });
  }

  @override
  TaskVoid resolveReport(int reportId, String resolveMessage) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.resolveReport(reportId, resolveMessage);
    });
  }

  @override
  TaskVoid resolveReportBulk(List<int> reportIds, String resolveMessage) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.resolveReportBulk(reportIds, resolveMessage);
    });
  }
}
