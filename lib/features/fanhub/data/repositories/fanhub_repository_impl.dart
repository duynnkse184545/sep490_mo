import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/fanhub_remote_datasource.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/data/repositories/fanhub_repository.dart';

class FanHubRepositoryImpl implements FanHubRepository {
  final FanHubRemoteDatasource _remoteDataSource;

  FanHubRepositoryImpl({required FanHubRemoteDatasource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<FanHub>> getFanHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
    required bool includePrivate,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getFanHubs(
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
        includePrivate: includePrivate,
      );
    });
  }

  @override
  TaskResult<List<FanHub>> getFanHubsByCategory({
    required int pageNo,
    required int pageSize,
    required String category,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getFanHubsByCategory(
        pageNo: pageNo,
        pageSize: pageSize,
        category: category,
      );
    });
  }

  @override
  TaskResult<FanHub> getFanHubBySubdomain(String subdomain) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getFanHubBySubdomain(subdomain);
    });
  }

  @override
  TaskVoid createFanHub(CreateFanHubRequest request) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.createFanHub(request);
    });
  }

  @override
  TaskResult<List<FanHub>> getMyHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getMyHubs(
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }
}
