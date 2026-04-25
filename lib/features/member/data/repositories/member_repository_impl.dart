import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/repositories/member_repository.dart';

class MemberRepositoryImpl implements MemberRepository {
  final MemberRemoteDatasource _remoteDataSource;

  MemberRepositoryImpl({required MemberRemoteDatasource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<MemberCheckingResponse> isMember(int fanHubId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.isMember(fanHubId);
    });
  }

  @override
  TaskResult<List<Member>> getMembers({
    required int fanHubId,
    required int pageNo,
    required int pageSize,
    String sortBy = 'joinedAt',
    String? username,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getMembers(
        fanHubId: fanHubId,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
        username: username,
      );
    });
  }

  @override
  TaskResult<Member> getMemberDetail(int fanHubMemberId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getMemberDetail(fanHubMemberId);
    });
  }

  @override
  TaskVoid joinFanHub(int fanHubId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.joinFanHub(fanHubId);
    });
  }

  @override
  TaskVoid leaveFanHub(int fanHubId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.leaveFanHub(fanHubId);
    });
  }

  @override
  TaskVoid kickMember(int fanHubId, int memberId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.kickMember(fanHubId, memberId);
    });
  }

  @override
  TaskVoid setModerator(int fanHubId, List<int>? memberIds) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.setModerator(fanHubId, memberIds);
    });
  }

  @override
  TaskVoid removeModerator(int fanHubId, List<int>? memberIds) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.removeModerator(fanHubId, memberIds);
    });
  }
}
