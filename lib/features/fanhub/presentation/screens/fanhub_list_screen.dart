import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/app_notifier.dart';
import 'package:sep490_mo/app/app_state.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_list_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_owner_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/fanhub_state.dart';
import 'package:sep490_mo/features/fanhub/presentation/widgets/fanhub_card.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

class FanHubListScreen extends HookConsumerWidget {
  const FanHubListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fanHubAsync = ref.watch(fanHubListControllerProvider);
    final controller = ref.read(fanHubListControllerProvider.notifier);
    final scrollController = useScrollController();
    final searchController = useTextEditingController();
    
    final ownerHubAsync = ref.watch(fanHubOwnerControllerProvider);
    final isVtuber = ref.watch(appProvider).whenOrNull(ready: (user) => user.role == UserRole.vtuber);

    useEffect(() {
      void onScroll() {
        if (!scrollController.hasClients) return;
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          controller.loadMore();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Expanded(child: _buildTabSelector(context, controller)),
                  const SizedBox(width: 8),
                  _buildActionButton(context, ownerHubAsync, isVtuber),
                ],
              ),
            ),
            if (controller.activeTab == FanHubTab.discover)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search Fan Hubs...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              searchController.clear();
                              controller.search(null);
                            },
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  onSubmitted: (value) => controller.search(value),
                  onChanged: (value) {
                    if (value.isEmpty) controller.search(null);
                  },
                ),
              ),
            Expanded(
              child: fanHubAsync.when(
                data: (fanHubState) => fanHubState.when(
                  ready: (fanHubs, _) => RefreshIndicator(
                    onRefresh: controller.refresh,
                    child: ListView.separated(
                      controller: scrollController,
                      padding: const EdgeInsets.only(top: 8, bottom: 16),
                      itemCount: fanHubs.length + 1,
                      separatorBuilder: (_, _) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        if (index == fanHubs.length) {
                          return const SizedBox.shrink();
                        }
                        return FanHubCard(fanHub: fanHubs[index]);
                      },
                    ),
                  ),
                  loadingMore: (fanHubs, _) => ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(top: 8, bottom: 16),
                    itemCount: fanHubs.length + 1,
                    separatorBuilder: (_, _) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      if (index == fanHubs.length) {
                        return const Padding(
                          padding: EdgeInsets.all(16),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      return FanHubCard(fanHub: fanHubs[index]);
                    },
                  ),
                  refreshing: (fanHubs, _) => ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(top: 8, bottom: 16),
                    itemCount: fanHubs.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 8),
                    itemBuilder: (context, index) =>
                        FanHubCard(fanHub: fanHubs[index]),
                  ),
                  empty: (_) => EmptyState(
                    message: controller.activeTab == FanHubTab.myHubs
                        ? 'You have not joined any Fan Hubs yet'
                        : 'No Fan Hubs found',
                    icon: Icons.groups_outlined,
                  ),
                ),
                loading: () => const Loader(),
                error: (error, stackTrace) => ErrorBanner(
                  message: error.toString(),
                  onRetry: controller.refresh,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabSelector(BuildContext context, FanHubListController controller) {
    final tabs = [
      {'tab': FanHubTab.discover, 'label': 'Discover', 'icon': Icons.explore_outlined},
      {'tab': FanHubTab.myHubs, 'label': 'Joined Hubs', 'icon': Icons.groups_outlined},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: tabs.map((item) {
          final isSelected = controller.activeTab == item['tab'];
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () => controller.switchTab(item['tab'] as FanHubTab),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? Theme.of(context).colorScheme.primary : const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: isSelected ? AppColors.border : Colors.black12,
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      item['icon'] as IconData,
                      size: 18,
                      color: isSelected ? Colors.white : const Color(0xFF666666),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      item['label'] as String,
                      style: TextStyle(
                        color: isSelected ? Colors.white : const Color(0xFF666666),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    AsyncValue<FanHub?> ownerHubAsync,
      bool? isVtuber
  ) {

    if (isVtuber != true) return const SizedBox.shrink();

    return ownerHubAsync.when(
      data: (hub) {
        if (hub == null) {
          return IconButton.filled(
            onPressed: () => const CreateFanHubRoute().push(context),
            icon: const Icon(Icons.add),
            tooltip: 'Create Your FanHub',
          );
        } else {
          return IconButton.filledTonal(
            onPressed: () {
              FanHubDetailRoute(
                subdomain: hub.subdomain,
                fanHubId: hub.fanHubId,
              ).push(context);
            },
            icon: const Icon(Icons.star),
            tooltip: 'My Hub',
          );
        }
      },
      loading: () => const CircularProgressIndicator(),
      error: (_, _) => IconButton(
        onPressed: () => const CreateFanHubRoute().push(context),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
