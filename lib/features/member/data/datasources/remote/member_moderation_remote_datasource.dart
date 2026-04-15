import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

abstract class MemberModerationRemoteDatasource {
  Future<List<Member>> getPendingMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<List<MemberWithReports>> getMemberWithReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<void> reviewMember(int postId, MemberStatus status);

  Future<void> resolveReport(int reportId, String resolveMessage);

  Future<void> resolveReportBulk(List<int> reportIds, String resolveMessage);
}
