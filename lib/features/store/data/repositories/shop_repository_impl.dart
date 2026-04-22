import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/shop_remote_datasource.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';
import 'package:sep490_mo/features/store/data/repositories/shop_repository.dart';

class ShopRepositoryImpl implements ShopRepository {
  final ShopRemoteDataSource _remoteDataSource;

  ShopRepositoryImpl({required ShopRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<ShopItem>> getAllShopItems() {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getAllShopItems();
    });
  }

  @override
  TaskVoid purchase(int shopItemId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.purchase(shopItemId);
    });
  }
}
