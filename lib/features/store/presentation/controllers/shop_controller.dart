import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/features/store/data/providers/store_providers.dart';
import 'package:sep490_mo/features/store/presentation/states/shop_state.dart';

part 'shop_controller.g.dart';

@riverpod
class ShopController extends _$ShopController {
  @override
  Future<ShopState> build() async {
    return _fetchShopItems();
  }

  Future<ShopState> _fetchShopItems() async {
    final result = await ref.read(shopRepositoryProvider).getAllShopItems().run();
    
    return result.fold(
      (failure) => throw failure,
      (items) => items.isEmpty 
          ? const ShopState.empty() 
          : ShopState.ready(items),
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchShopItems());
  }

  Future<bool> purchaseItem(int shopItemId) async {
    final result = await ref.read(shopRepositoryProvider).purchase(shopItemId).run();
    
    return result.fold(
      (failure) => false,
      (_) {
        refresh();
        return true;
      },
    );
  }
}
