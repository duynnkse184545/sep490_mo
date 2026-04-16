import 'package:sep490_mo/features/member/data/models/member_models.dart';

abstract class BanRemoteDataSource {
  Future<List<Member>> getBannedMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<void> banMember(BanRequest banRequest);

  Future<void> unbanMember(int banId);
}
