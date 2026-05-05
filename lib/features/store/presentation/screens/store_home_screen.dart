import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/app_notifier.dart';
import 'package:sep490_mo/app/app_state.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';
import 'package:sep490_mo/features/store/presentation/controllers/shop_controller.dart';
import 'package:sep490_mo/features/store/presentation/controllers/banner_controller.dart';
import 'package:sep490_mo/features/store/presentation/states/banner_state.dart';
import 'package:sep490_mo/features/store/presentation/states/shop_state.dart';
import 'package:sep490_mo/features/store/presentation/widgets/insufficient_points_modal.dart';

class StoreHomeScreen extends HookConsumerWidget {
  const StoreHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          title: const Text('STORE', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5)),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          bottom: const TabBar(
            labelColor: AppColors.primary,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.primary,
            indicatorWeight: 3,
            tabs: [
              Tab(text: 'SHOP', icon: Icon(Icons.shopping_bag_outlined)),
              Tab(text: 'GACHA', icon: Icon(Icons.auto_awesome_outlined)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            _ShopView(),
            _GachaView(),
          ],
        ),
      ),
    );
  }
}

class _ShopView extends ConsumerWidget {
  const _ShopView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(shopControllerProvider);
    final controller = ref.read(shopControllerProvider.notifier);

    return state.when(
      loading: () => const Loader(),
      error: (err, stack) => ErrorBanner(
        message: err.toString(),
        onRetry: controller.refresh,
      ),
      data: (shopState) => shopState.when(
        ready: (items) => RefreshIndicator(
          onRefresh: controller.refresh,
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 16, left: 4, right: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.border, width: 2),
                  boxShadow: const [
                    BoxShadow(color: AppColors.border, offset: Offset(6, 6)),
                  ],
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  title: Text(item.itemName, style: const TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF323232))),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(item.description ?? item.category, style: const TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
                  ),
                  trailing: _buildPurchaseButton(context, ref, controller, item),
                ),
              );
            },
          ),
        ),
        empty: () => const Center(child: Text('No items available in the shop.', style: TextStyle(fontWeight: FontWeight.bold))),
      ),
    );
  }

  Widget _buildPurchaseButton(BuildContext context, WidgetRef ref, dynamic controller, ShopItem item) {
    return InkWell(
      onTap: () async {
        final appState = ref.read(appProvider);
        final userPoints = appState.maybeWhen(ready: (user) => user.points, orElse: () => 0);
        
        if (userPoints < item.price) {
          showDialog(context: context, builder: (_) => const InsufficientPointsModal());
          return;
        }

        final success = await controller.purchaseItem(item.itemId);
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(success ? 'Purchase successful!' : 'Purchase failed')),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(color: AppColors.border, width: 1.5),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(3, 3)),
          ],
        ),
        child: Text(
          '${item.price} PTS',
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 12),
        ),
      ),
    );
  }
}

class _GachaView extends ConsumerWidget {
  const _GachaView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bannerControllerProvider);
    final controller = ref.read(bannerControllerProvider.notifier);

    return state.when(
      loading: () => const Loader(),
      error: (err, stack) => ErrorBanner(
        message: err.toString(),
        onRetry: controller.refresh,
      ),
      data: (bannerState) => bannerState.when(
        ready: (banner, items) => RefreshIndicator(
          onRefresh: controller.refresh,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.border, width: 2),
                boxShadow: const [
                  BoxShadow(color: AppColors.border, offset: Offset(8, 8)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: banner.bannerImgUrl != null
                            ? Image.network(banner.bannerImgUrl!, fit: BoxFit.cover, width: double.infinity, height: 200)
                            : Container(
                                color: Theme.of(context).colorScheme.primaryContainer,
                                width: double.infinity,
                                height: 200,
                                child: const Icon(Icons.image, size: 64),
                              ),
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withValues(alpha: 0.7),
                          child: IconButton(
                            icon: const Icon(Icons.info_outline, color: Colors.white),
                            onPressed: () => _showItemsDialog(context, items),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    banner.name,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: Color(0xFF323232)),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    banner.description ?? 'Try your luck!',
                    style: const TextStyle(color: Color(0xFF666666), height: 1.4, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 32),
                  _buildGachaButton(context, ref, controller, banner),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGachaButton(BuildContext context, WidgetRef ref, dynamic controller, dynamic banner) {
    return InkWell(
      onTap: () async {
        final appState = ref.read(appProvider);
        final userPoints = appState.maybeWhen(ready: (user) => user.points, orElse: () => 0);
        
        if (userPoints < banner.gachaCost) {
          showDialog(context: context, builder: (_) => const InsufficientPointsModal());
          return;
        }

        final success = await controller.performGacha(banner.bannerId);
        if (context.mounted && success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Gacha successful! Check your inventory.')),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF75FBC0),
          border: Border.all(color: AppColors.border, width: 2.5),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.auto_awesome, color: Color(0xFF323232), size: 24),
            const SizedBox(width: 12),
            Text(
              'ROLL GACHA (${banner.gachaCost} PTS)',
              style: const TextStyle(color: Color(0xFF323232), fontWeight: FontWeight.w900, fontSize: 15, letterSpacing: 1),
            ),
          ],
        ),
      ),
    );
  }

  void _showItemsDialog(BuildContext context, List<BannerItem> items) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), 
          side: const BorderSide(color: AppColors.border, width: 2),
        ),
        title: const Text('REWARDS POOL', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: items.length,
            separatorBuilder: (_, _) => const Divider(color: Colors.black12),
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: const Color(0xFFF5F5F5), shape: BoxShape.circle),
                  child: const Icon(Icons.star, color: Colors.amber, size: 20),
                ),
                title: Text(item.itemName, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                subtitle: Text(item.type.name.toUpperCase(), style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w900, color: Colors.grey)),
                contentPadding: EdgeInsets.zero,
              );
            },
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CLOSE', style: TextStyle(fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
