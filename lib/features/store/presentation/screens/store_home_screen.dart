import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/app_notifier.dart';
import 'package:sep490_mo/app/app_state.dart';
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
        appBar: AppBar(
          title: const Text('Store'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Shop', icon: Icon(Icons.shopping_bag)),
              Tab(text: 'Gacha', icon: Icon(Icons.auto_awesome)),
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
              return Card(
                child: ListTile(
                  title: Text(item.itemName),
                  subtitle: Text(item.description ?? item.category),
                  trailing: ElevatedButton(
                    onPressed: () async {
                      final appState = ref.read(appProvider);
                      final userPoints = appState.maybeWhen(ready: (user) => user.points, orElse: () => 0);
                      
                      if (userPoints < item.price) {
                        showDialog(
                          context: context,
                          builder: (_) => const InsufficientPointsModal(),
                        );
                        return;
                      }

                      final success = await controller.purchaseItem(item.itemId);
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(success ? 'Purchase successful!' : 'Purchase failed'),
                          ),
                        );
                      }
                    },
                    child: Text('${item.price} pts'),
                  ),
                ),
              );
            },
          ),
        ),
        empty: () => RefreshIndicator(
          onRefresh: controller.refresh,
          child: const SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text('No items available in the shop.'),
              ),
            ),
          ),
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
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: banner.bannerImgUrl != null
                            ? Image.network(
                                banner.bannerImgUrl!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 200,
                              )
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
                          backgroundColor: Colors.black54,
                          child: IconButton(
                            icon: const Icon(Icons.info_outline, color: Colors.white),
                            onPressed: () => _showItemsDialog(context, items),
                            tooltip: 'Show items',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  banner.name,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(banner.description ?? 'Try your luck!'),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () async {
                    final appState = ref.read(appProvider);
                    final userPoints = appState.maybeWhen(ready: (user) => user.points, orElse: () => 0);
                    
                    if (userPoints < banner.gachaCost) {
                      showDialog(
                        context: context,
                        builder: (_) => const InsufficientPointsModal(),
                      );
                      return;
                    }

                    final success = await controller.performGacha(banner.bannerId);
                    if (context.mounted && success) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Gacha successful! Check your inventory.')),
                      );
                    }
                  },
                  icon: const Icon(Icons.auto_awesome),
                  label: Text('Roll Gacha (${banner.gachaCost} pts)'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showItemsDialog(BuildContext context, List<BannerItem> items) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Potential Rewards'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: items.length,
            separatorBuilder: (_, _) => const Divider(),
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                leading: const Icon(Icons.star, color: Colors.amber),
                title: Text(item.itemName),
                subtitle: Text(item.type.name.toUpperCase()),
                contentPadding: EdgeInsets.zero,
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
