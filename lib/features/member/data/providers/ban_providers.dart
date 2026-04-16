import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/ban_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/ban_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/ban_remote_datasource_impl.dart';
import 'package:sep490_mo/features/member/data/repositories/ban_repository.dart';
import 'package:sep490_mo/features/member/data/repositories/ban_repository_impl.dart';

part 'ban_providers.g.dart';

@riverpod
BanApiService banApiService(Ref ref) {
  return BanApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
BanRemoteDataSource banRemoteDataSource(Ref ref) {
  return BanRemoteDataSourceImpl(
    banApi: ref.watch(banApiServiceProvider),
  );
}

@riverpod
BanRepository banRepository(Ref ref) {
  return BanRepositoryImpl(
    remoteDataSource: ref.watch(banRemoteDataSourceProvider),
  );
}
