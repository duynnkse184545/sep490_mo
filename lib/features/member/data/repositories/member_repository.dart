import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

abstract class MemberRepository {
  TaskResult<MemberCheckingResponse> isMember(int fanHubId);

  TaskResult<List<Member>> getMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    String sortBy,
    String? username,
  });

  TaskResult<Member> getMemberDetail(int fanHubMemberId);

  TaskVoid joinFanHub(int fanHubId);

  TaskVoid leaveFanHub(int fanHubId);

  TaskVoid kickMember(int fanHubId, int memberId);

  TaskVoid setModerator(int fanHubId, List<int>? memberIds);

  TaskVoid removeModerator(int fanHubId, List<int>? memberIds);
}
