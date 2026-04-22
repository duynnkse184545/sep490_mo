import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

abstract class ShopRepository {
  TaskResult<List<ShopItem>> getAllShopItems();
  TaskVoid purchase(int shopItemId);
}
