import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

abstract class MemberBanRepository {
  TaskResult<List<MemberWithBans>> getBannedMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskVoid banMember(BanRequest banRequest);

  TaskVoid unbanMember(int banId);
}
