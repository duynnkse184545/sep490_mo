import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/comment_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/comment_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/comment_remote_datasource_impl.dart';
import 'package:sep490_mo/features/post/data/repositories/comment_repository.dart';
import 'package:sep490_mo/features/post/data/repositories/comment_repository_impl.dart';

part 'comment_providers.g.dart';

@riverpod
CommentApiService commentApiService(Ref ref) {
  return CommentApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
CommentRemoteDataSource commentRemoteDataSource(Ref ref) {
  return CommentRemoteDataSourceImpl(
    commentApi: ref.watch(commentApiServiceProvider),
  );
}

@riverpod
CommentRepository commentRepository(Ref ref) {
  return CommentRepositoryImpl(
    remoteDataSource: ref.watch(commentRemoteDataSourceProvider),
  );
}
