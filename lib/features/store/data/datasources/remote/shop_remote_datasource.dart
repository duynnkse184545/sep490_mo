import 'package:sep490_mo/features/store/data/models/item_models.dart';

abstract class ShopRemoteDataSource {
  Future<List<ShopItem>> getAllShopItems();
  Future<void> purchase(int shopItemId);
}
