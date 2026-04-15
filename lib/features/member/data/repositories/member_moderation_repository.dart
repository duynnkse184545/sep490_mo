import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

abstract class MemberModerationRepository {
  TaskResult<List<Member>> getPendingMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskResult<List<MemberWithReports>> getMemberWithReports({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskVoid reviewMember(int postId, MemberStatus status);

  TaskVoid resolveReport(int reportId, String resolveMessage);

  TaskVoid resolveReportBulk(List<int> reportIds, String resolveMessage);
}
