import 'package:sep490_mo/features/member/data/models/member_models.dart';

abstract class MemberRemoteDatasource {
  Future<MemberCheckingResponse> isMember(int fanHubId);

  Future<List<Member>> getMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
    String? username,
  });

  Future<Member> getMemberDetail(int fanHubMemberId);

  Future<void> joinFanHub(int fanHubId);

  Future<void> leaveFanHub(int fanHubId);

  Future<void> kickMember(int fanHubId, int memberId);

  Future<void> setModerator(int fanHubId, List<int>? memberIds);

  Future<void> removeModerator(int fanHubId, List<int>? memberIds);
}
