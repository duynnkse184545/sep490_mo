import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/member_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_remote_datasource_impl.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/repositories/member_repository.dart';
import 'package:sep490_mo/features/member/data/repositories/member_repository_impl.dart';

part 'member_providers.g.dart';

@riverpod
MemberApiService memberApiService(Ref ref) {
  return MemberApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
MemberRemoteDatasource memberRemoteDataSource(Ref ref) {
  return MemberRemoteDatasourceImpl(
    memberApi: ref.watch(memberApiServiceProvider),
  );
}

@riverpod
MemberRepository memberRepository(Ref ref) {
  return MemberRepositoryImpl(
    remoteDataSource: ref.watch(memberRemoteDataSourceProvider),
  );
}

@riverpod
Future<MemberCheckingResponse> memberChecking(
  Ref ref, {
  required int fanHubId,
}) async {
  final repo = ref.watch(memberRepositoryProvider);
  final result = await repo.isMember(fanHubId).run();
  return result.fold(
    (_) => throw Exception('Failed to check membership'),
    (member) => member,
  );
}
