import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/database/database_provider.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/user/data/datasources/local/user_local_datasource.dart';
import 'package:sep490_mo/features/user/data/datasources/local/user_local_datasource_impl.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/api/user_api_service.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/user_remote_datasource.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/user_remote_datasource_impl.dart';
import 'package:sep490_mo/features/user/data/repositories/user_repository.dart';
import 'package:sep490_mo/features/user/data/repositories/user_repository_impl.dart';

part 'user_providers.g.dart';

@riverpod
UserApiService userApiService(Ref ref) {
  return UserApiService(ref.watch(dioProvider));
}

@riverpod
UserRemoteDataSource userRemoteDataSource(Ref ref) {
  return UserRemoteDataSourceImpl(userApi: ref.watch(userApiServiceProvider));
}

@riverpod
UserLocalDataSource userLocalDataSource(Ref ref) {
  return UserLocalDataSourceImpl(ref.watch(userDaoProvider));
}

@riverpod
UserRepository userRepository(Ref ref) {
  return UserRepositoryImpl(
    remoteDataSource: ref.watch(userRemoteDataSourceProvider),
    localDataSource: ref.watch(userLocalDataSourceProvider),
  );
}
