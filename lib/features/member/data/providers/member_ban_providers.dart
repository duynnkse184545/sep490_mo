import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/member_ban_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_ban_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_ban_remote_datasource_impl.dart';
import 'package:sep490_mo/features/member/data/repositories/member_ban_repository.dart';
import 'package:sep490_mo/features/member/data/repositories/member_ban_repository_impl.dart';

part 'member_ban_providers.g.dart';

@riverpod
MemberBanApiService memberBanApiService(Ref ref) {
  return MemberBanApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
MemberBanRemoteDataSource memberBanRemoteDataSource(Ref ref) {
  return MemberBanRemoteDataSourceImpl(
    banApi: ref.watch(memberBanApiServiceProvider),
  );
}

@riverpod
MemberBanRepository memberBanRepository(Ref ref) {
  return MemberBanRepositoryImpl(
    remoteDataSource: ref.watch(memberBanRemoteDataSourceProvider),
  );
}
