import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

abstract class BannerRepository {
  TaskResult<Banner> getBanner();
  TaskResult<List<BannerItem>> getBannerItems(int bannerId);
  TaskVoid gacha(int bannerId);
}
