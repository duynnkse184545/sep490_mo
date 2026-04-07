import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/api/fanhub_api_service.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/fanhub_remote_datasource.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/fanhub_remote_datasource_impl.dart';
import 'package:sep490_mo/features/fanhub/data/repositories/fanhub_repository.dart';
import 'package:sep490_mo/features/fanhub/data/repositories/fanhub_repository_impl.dart';


part 'fanhub_providers.g.dart';

@riverpod
FanHubApiService fanHubApiService(Ref ref) {
  return FanHubApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
FanHubRemoteDatasource fanHubRemoteDataSource(Ref ref) {
  return FanHubRemoteDatasourceImpl(fanHubApi: ref.watch(fanHubApiServiceProvider));
}

@riverpod
FanHubRepository fanHubRepository(Ref ref) {
  return FanHubRepositoryImpl(
    remoteDataSource: ref.watch(fanHubRemoteDataSourceProvider),
  );
}
