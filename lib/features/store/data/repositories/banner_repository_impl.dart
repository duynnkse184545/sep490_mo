import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/banner_remote_datasource.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';
import 'package:sep490_mo/features/store/data/repositories/banner_repository.dart';

class BannerRepositoryImpl implements BannerRepository {
  final BannerRemoteDataSource _remoteDataSource;

  BannerRepositoryImpl({required BannerRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<Banner> getBanner() {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getBanner();
    });
  }

  @override
  TaskResult<List<BannerItem>> getBannerItems(int bannerId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getBannerItems(bannerId);
    });
  }

  @override
  TaskVoid gacha(int bannerId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.gacha(bannerId);
    });
  }
}
