import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/database/database_provider.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/post/data/datasources/local/feed_local_datasource.dart';
import 'package:sep490_mo/features/post/data/datasources/local/feed_local_datasource_impl.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/feed_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/feed_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/feed_remote_datasource_impl.dart';
import 'package:sep490_mo/features/post/data/repositories/feed_repository.dart';
import 'package:sep490_mo/features/post/data/repositories/feed_repository_impl.dart';

part 'feed_providers.g.dart';

@riverpod
FeedApiService feedApiService(Ref ref) {
  return FeedApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
FeedRemoteDatasource feedRemoteDataSource(Ref ref) {
  return FeedRemoteDatasourceImpl(feedApi: ref.watch(feedApiServiceProvider));
}

@riverpod
FeedLocalDataSource feedLocalDataSource(Ref ref) {
  return FeedLocalDataSourceImpl(ref.watch(postDaoProvider));
}

@riverpod
FeedRepository feedRepository(Ref ref) {
  return FeedRepositoryImpl(
    remoteDataSource: ref.watch(feedRemoteDataSourceProvider),
    localDataSource: ref.watch(feedLocalDataSourceProvider),
  );
}
