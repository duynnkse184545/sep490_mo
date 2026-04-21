import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/api/vtuber_application_api_service.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/vtuber_application_remote_datasource.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/vtuber_application_remote_datasource_impl.dart';
import 'package:sep490_mo/features/user/data/repositories/vtuber_application_repository.dart';
import 'package:sep490_mo/features/user/data/repositories/vtuber_application_repository_impl.dart';

part 'vtuber_application_providers.g.dart';

@riverpod
VtuberApplicationApiService vtuberApplicationApiService(Ref ref) {
  return VtuberApplicationApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
VtuberApplicationRemoteDataSource vtuberApplicationRemoteDataSource(Ref ref) {
  return VtuberApplicationRemoteDataSourceImpl(
    apiService: ref.watch(vtuberApplicationApiServiceProvider),
  );
}

@riverpod
VtuberApplicationRepository vtuberApplicationRepository(Ref ref) {
  return VtuberApplicationRepositoryImpl(
    remoteDataSource: ref.watch(vtuberApplicationRemoteDataSourceProvider),
  );
}
