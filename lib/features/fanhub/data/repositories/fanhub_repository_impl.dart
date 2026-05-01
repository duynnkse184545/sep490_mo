import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/fanhub/data/datasources/remote/fanhub_remote_datasource.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/data/repositories/fanhub_repository.dart';

class FanHubRepositoryImpl implements FanHubRepository {
  final FanHubRemoteDataSource _remoteDataSource;

  FanHubRepositoryImpl({required FanHubRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<FanHub>> getFanHubs({
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
    bool includePrivate = false,
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
  TaskResult<List<FanHub>> getMyHubs({
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getMyHubs(
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskResult<FanHub> getMyHubsAsOwner() {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getMyHubsAsOwner();
    });
  }

  @override
  TaskResult<List<FanHub>> searchHubs({
    required String keyword,
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
    String sortDir = 'desc',
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.searchHubs(
        keyword: keyword,
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
        sortDir: sortDir,
      );
    });
  }

  @override
  TaskVoid createFanHub({
    required CreateFanHubRequest request,
    String? bannerPath,
    String? avatarPath,
  }) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.createFanHub(
        request: request,
        bannerPath: bannerPath,
        avatarPath: avatarPath,
      );
    });
  }

  @override
  TaskVoid uploadFanHubImages({
    required int fanHubId,
    required List<String> backgrounds,
    String? bannerPath,
    String? avatarPath,
  }) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.uploadFanHubImages(
        fanHubId: fanHubId,
        backgrounds: backgrounds,
        bannerPath: bannerPath,
        avatarPath: avatarPath,
      );
    });
  }
}
