import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/api/post_moderation_api_service.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_moderation_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_moderation_remote_datasource_impl.dart';
import 'package:sep490_mo/features/post/data/repositories/post_moderation_repository.dart';
import 'package:sep490_mo/features/post/data/repositories/post_moderation_repository_impl.dart';

part 'post_report_providers.g.dart';

@riverpod
PostModerationApiService postReportApiService(Ref ref) {
  return PostModerationApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
PostModerationRemoteDatasource postReportRemoteDataSource(Ref ref) {
  return PostModerationRemoteDatasourceImpl(
    moderationApi: ref.watch(postReportApiServiceProvider),
  );
}

@riverpod
PostModerationRepository postReportRepository(Ref ref) {
  return PostModerationRepositoryImpl(
    remoteDataSource: ref.watch(postReportRemoteDataSourceProvider),
  );
}
