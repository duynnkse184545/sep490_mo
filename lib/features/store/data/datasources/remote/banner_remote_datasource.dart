import 'package:sep490_mo/features/store/data/models/item_models.dart';

abstract class BannerRemoteDataSource {
  Future<Banner> getBanner();
  Future<List<BannerItem>> getBannerItems(int bannerId);
  Future<void> gacha(int bannerId);
}
