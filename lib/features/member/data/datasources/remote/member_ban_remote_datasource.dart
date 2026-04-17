import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

abstract class MemberBanRemoteDataSource {
  Future<List<MemberWithBans>> getBannedMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<void> banMember(BanRequest banRequest);

  Future<void> unbanMember(int banId);
}
