import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/member_moderation_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_moderation_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/member_moderation_remote_datasource_impl.dart';
import 'package:sep490_mo/features/member/data/repositories/member_moderation_repository.dart';
import 'package:sep490_mo/features/member/data/repositories/member_moderation_repository_impl.dart';

part 'member_moderation_providers.g.dart';

@riverpod
MemberModerationApiService memberModerationApiService(Ref ref) {
  return MemberModerationApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
MemberModerationRemoteDatasource memberModerationRemoteDataSource(Ref ref) {
  return MemberModerationRemoteDatasourceImpl(
    moderationApi: ref.watch(memberModerationApiServiceProvider),
  );
}

@riverpod
MemberModerationRepository memberModerationRepository(Ref ref) {
  return MemberModerationRepositoryImpl(
    remoteDataSource: ref.watch(memberModerationRemoteDataSourceProvider),
  );
}
