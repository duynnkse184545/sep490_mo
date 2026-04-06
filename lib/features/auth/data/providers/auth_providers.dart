import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/auth/data/datasources/remote/api/auth_api_service.dart';
import 'package:sep490_mo/features/auth/data/datasources/remote/auth_remote_datasource.dart';
import 'package:sep490_mo/features/auth/data/datasources/remote/auth_remote_datasource_impl.dart';
import 'package:sep490_mo/features/auth/data/repositories/auth_repository.dart';
import 'package:sep490_mo/features/auth/data/repositories/auth_repository_impl.dart';

part 'auth_providers.g.dart';

// Remote DataSource Provider
@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSourceImpl(
    authApi: ref.watch(authApiServiceProvider),
  );
}

@riverpod
AuthApiService authApiService(Ref ref) {
  return AuthApiService(ref.watch(dioProvider));
}


// Repository Provider
@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    remoteDataSource: ref.watch(authRemoteDataSourceProvider),
    tokenService: ref.watch(tokenServiceProvider)
  );
}
