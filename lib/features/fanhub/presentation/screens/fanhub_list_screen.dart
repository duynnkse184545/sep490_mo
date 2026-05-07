import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/app_notifier.dart';
import 'package:sep490_mo/app/app_state.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_list_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_owner_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/fanhub_state.dart';
import 'package:sep490_mo/features/fanhub/presentation/widgets/fanhub_card.dart';
import 'package:sep490_mo/features/fanhub/presentation/widgets/fanhub_minimal_card.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';
import 'package:sep490_mo/app/router/routes.dart';

class FanHubListScreen extends HookConsumerWidget {
  const FanHubListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTab = useState(FanHubTab.discover);
    
    final fanHubAsync = ref.watch(fanHubListControllerProvider(activeTab.value));
    final controller = ref.read(fanHubListControllerProvider(activeTab.value).notifier);
    
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
    }, [scrollController, activeTab.value]);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Expanded(child: _buildTabSelector(context, activeTab)),
                  const SizedBox(width: 8),
                  _buildActionButton(context, ownerHubAsync, isVtuber),
                ],
              ),
            ),
            if (activeTab.value == FanHubTab.discover)
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
                  ready: (fanHubs, topHubs, _) => RefreshIndicator(
                    onRefresh: controller.refresh,
                    child: _buildList(fanHubs, topHubs, scrollController, false, activeTab.value),
                  ),
                  loadingMore: (fanHubs, topHubs, _) => RefreshIndicator(
                    onRefresh: controller.refresh,
                    child: _buildList(fanHubs, topHubs, scrollController, true, activeTab.value),
                  ),
                  refreshing: (fanHubs, topHubs, _) => _buildList(fanHubs, topHubs, scrollController, false, activeTab.value),
                  empty: (_) => EmptyState(
                    message: activeTab.value == FanHubTab.myHubs
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

  Widget _buildList(
    List<FanHub> fanHubs, 
    List<FanHub> topHubs,
    ScrollController controller, 
    bool isLoadingMore, 
    FanHubTab tab,
  ) {
    if (fanHubs.isEmpty && topHubs.isEmpty) return const SizedBox.shrink();
    
    final isDiscover = tab == FanHubTab.discover && topHubs.isNotEmpty;

    return ListView.builder(
      controller: controller,
      padding: const EdgeInsets.only(bottom: 24),
      itemCount: (isDiscover ? topHubs.length : 0) + (isDiscover ? 1 : 0) + fanHubs.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        // 1. Featured Section
        if (isDiscover && index < topHubs.length) {
          return FanHubCard(fanHub: topHubs[index]);
        }
        
        // 2. Header
        if (isDiscover && index == topHubs.length) {
           return const Padding(
             padding: EdgeInsets.fromLTRB(20, 20, 20, 16),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   "ALL HUBS",
                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color(0xFFC75050), letterSpacing: 1),
                 ),
                 SizedBox(height: 8),
                 Divider(height: 1, color: Colors.black12),
               ],
             ),
           );
        }

        // 3. Regular Hubs
        final listIndex = isDiscover ? index - topHubs.length - 1 : index;
        if (listIndex < 0) return const SizedBox.shrink();
        
        if (listIndex >= fanHubs.length) {
          return const Center(child: Padding(padding: EdgeInsets.all(16), child: CircularProgressIndicator()));
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FanHubMinimalCard(fanHub: fanHubs[listIndex]),
        );
      },
    );
  }

  Widget _buildTabSelector(BuildContext context, ValueNotifier<FanHubTab> activeTab) {
    final tabs = [
      {'tab': FanHubTab.discover, 'label': 'Discover', 'icon': Icons.explore_outlined},
      {'tab': FanHubTab.myHubs, 'label': 'Joined Hubs', 'icon': Icons.groups_outlined},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: tabs.map((item) {
          final isSelected = activeTab.value == item['tab'];
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () => activeTab.value = item['tab'] as FanHubTab,
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
