import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/post_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_remote_datasource_impl.dart';
import 'package:sep490_mo/features/post/data/repositories/post_repository.dart';
import 'package:sep490_mo/features/post/data/repositories/post_repository_impl.dart';

part 'post_providers.g.dart';

@riverpod
PostApiService postApiService(Ref ref) {
  return PostApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
PostRemoteDataSource postRemoteDataSource(Ref ref) {
  return PostRemoteDatasourceImpl(postApi: ref.watch(postApiServiceProvider));
}

@riverpod
PostRepository postRepository(Ref ref) {
  return PostRepositoryImpl(remoteDataSource: ref.watch(postRemoteDataSourceProvider));
}
