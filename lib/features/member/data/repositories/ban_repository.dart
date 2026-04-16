import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

abstract class BanRepository {
  TaskResult<List<Member>> getBannedMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskVoid banMember(BanRequest banRequest);

  TaskVoid unbanMember(int banId);
}
