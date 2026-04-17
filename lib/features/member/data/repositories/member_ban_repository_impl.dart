import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_ban_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';
import 'package:sep490_mo/features/member/data/repositories/member_ban_repository.dart';

class MemberBanRepositoryImpl implements MemberBanRepository {
  final MemberBanRemoteDataSource _remoteDataSource;

  MemberBanRepositoryImpl({
    required MemberBanRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<MemberWithBans>> getBannedMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getBannedMembers(
        fanHubId: fanHubId,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskVoid banMember(BanRequest banRequest) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.banMember(banRequest);
    });
  }

  @override
  TaskVoid unbanMember(int banId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.unbanMember(banId);
    });
  }
}
