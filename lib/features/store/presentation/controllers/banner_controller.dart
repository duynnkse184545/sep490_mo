import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/store/data/providers/store_providers.dart';
import 'package:sep490_mo/features/store/presentation/states/banner_state.dart';

part 'banner_controller.g.dart';

@riverpod
class BannerController extends _$BannerController {
  @override
  Future<BannerState> build() async {
    return _fetchBannerData();
  }

  Future<BannerState> _fetchBannerData() async {
    final bannerResult = await ref.read(bannerRepositoryProvider).getBanner().run();

    return bannerResult.fold(
      (failure) => throw failure,
      (banner) async {
        final itemsResult = await ref.read(bannerRepositoryProvider).getBannerItems(banner.bannerId).run();
        return itemsResult.fold(
          (failure) => throw failure,
          (items) => BannerState.ready(banner: banner, items: items),
        );
      },
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchBannerData());
  }

  Future<bool> performGacha(int bannerId) async {
    final result = await ref.read(bannerRepositoryProvider).gacha(bannerId).run();
    
    return result.fold(
      (failure) => false,
      (_) {
        refresh();
        return true;
      },
    );
  }
}
