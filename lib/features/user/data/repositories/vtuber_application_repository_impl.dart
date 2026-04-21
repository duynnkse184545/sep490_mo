import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/user/data/datasources/remote/vtuber_application_remote_datasource.dart';
import 'package:sep490_mo/features/user/data/models/vtuber_models.dart';
import 'package:sep490_mo/features/user/data/repositories/vtuber_application_repository.dart';

class VtuberApplicationRepositoryImpl implements VtuberApplicationRepository {
  final VtuberApplicationRemoteDataSource _remoteDataSource;

  VtuberApplicationRepositoryImpl({required VtuberApplicationRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<VtuberApplication>> getMyVtuberApplication() {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getMyVtuberApplication();
    });
  }

  @override
  TaskVoid registerVtuber(VtuberRegisterRequest request) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.registerVtuber(request);
    });
  }
}
