import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/api/join_with_questions_api_service.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/join_with_questions_remote_datasource.dart';
import 'package:sep490_mo/features/member/data/datasources/remote/join_with_questions_remote_datasource_impl.dart';
import 'package:sep490_mo/features/member/data/repositories/join_with_questions_repository.dart';
import 'package:sep490_mo/features/member/data/repositories/join_with_questions_repository_impl.dart';

part 'join_with_questions_providers.g.dart';

@riverpod
JoinWithQuestionsApiService joinWithQuestionsApiService(Ref ref) {
  return JoinWithQuestionsApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
JoinWithQuestionsRemoteDataSource joinWithQuestionsRemoteDataSource(Ref ref) {
  return JoinWithQuestionsRemoteDataSourceImpl(
    apiService: ref.watch(joinWithQuestionsApiServiceProvider),
  );
}

@riverpod
JoinWithQuestionsRepository joinWithQuestionsRepository(Ref ref) {
  return JoinWithQuestionsRepositoryImpl(
    remoteDataSource: ref.watch(joinWithQuestionsRemoteDataSourceProvider),
  );
}
