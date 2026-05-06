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
import 'package:sep490_mo/features/store/presentation/widgets/purchase_modal.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body: Column(
          children: [
            _buildStickyPoints(ref),
            const Expanded(
              child: TabBarView(
                children: [
                  _ShopView(),
                  _GachaView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStickyPoints(WidgetRef ref) {
    final appState = ref.watch(appProvider);
    final points = appState.maybeWhen(ready: (user) => user.points, orElse: () => 0);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.black12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppColors.border, width: 1.5),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.monetization_on, color: Colors.amber, size: 20),
                const SizedBox(width: 8),
                Text(
                  "$points",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color(0xFF323232)),
                ),
                const SizedBox(width: 4),
                const Text("PTS", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey)),
              ],
            ),
          ),
        ],
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
        ready: (items) {
          if (items.isEmpty) return const Center(child: Text('Empty Store'));

          return RefreshIndicator(
            onRefresh: controller.refresh,
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _buildShopCard(context, ref, controller, items[index]);
              },
            ),
          );
        },
        empty: () => const Center(
          child: Text(
            'No items available in the shop.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  // Remove _buildCategorySection helper if no longer used
  
  Widget _buildShopCard(BuildContext context, WidgetRef ref, dynamic controller, ShopItem item) {
    return GestureDetector(
      onTap: () => _showPurchaseDialog(context, ref, controller, item),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.border, width: 2),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    ),
                    child: item.imageUrl != null 
                      ? Image.network(item.imageUrl!, fit: BoxFit.cover)
                      : const Icon(Icons.inventory_2_outlined, size: 48, color: Colors.grey),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        item.category.toUpperCase(),
                        style: const TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.itemName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13, color: Color(0xFF323232)),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.monetization_on, size: 14, color: Colors.amber),
                          const SizedBox(width: 4),
                          Text(
                            "${item.price}",
                            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14, color: AppColors.primary),
                          ),
                        ],
                      ),
                      const Icon(Icons.add_shopping_cart, size: 16, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPurchaseDialog(BuildContext context, WidgetRef ref, dynamic controller, ShopItem item) {
    final appState = ref.read(appProvider);
    final userPoints = appState.maybeWhen(ready: (user) => user.points, orElse: () => 0);

    showDialog(
      context: context,
      builder: (context) => PurchaseModal(
        item: item,
        userPoints: userPoints,
        onConfirm: () async {
          Navigator.pop(context);
          final success = await controller.purchaseItem(item.itemId);
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(success ? 'Purchase successful!' : 'Purchase failed')),
            );
          }
        },
        onCancel: () => Navigator.pop(context),
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
            child: Column(
              children: [
                Container(
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
                        banner.name.toUpperCase(),
                        style: GoogleFonts.jersey20(
                          fontSize: 42,
                          height: 1.1,
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        banner.description ?? 'Try your luck!',
                        style: const TextStyle(color: Color(0xFF555555), height: 1.4, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 32),
                      _buildGachaButton(context, ref, controller, banner),
                    ],
                  ),
                ),
              ],
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
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('CLOSE', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))),
        ],
      ),
    );
  }
}
