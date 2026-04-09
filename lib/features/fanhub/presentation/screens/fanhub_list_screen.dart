import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_list_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/fanhub_state.dart';
import 'package:sep490_mo/features/fanhub/presentation/widgets/fanhub_card.dart';

class FanHubListScreen extends HookConsumerWidget {
  const FanHubListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fanHubAsync = ref.watch(fanHubListControllerProvider);
    final controller = ref.read(fanHubListControllerProvider.notifier);
    final scrollController = useScrollController();

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
      appBar: AppBar(
        title: const Text('Fan Hubs'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: _TabButton(
                      label: 'Discover',
                      icon: Icons.explore_outlined,
                      isSelected: controller.activeTab == FanHubTab.discover,
                      onTap: () => controller.switchTab(FanHubTab.discover),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _TabButton(
                      label: 'My Hubs',
                      icon: Icons.groups_outlined,
                      isSelected: controller.activeTab == FanHubTab.myHubs,
                      onTap: () => controller.switchTab(FanHubTab.myHubs),
                    ),
                  ),
                ],
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
                      separatorBuilder: (_, _) => const SizedBox.shrink(),
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
                    separatorBuilder: (_, _) => const SizedBox.shrink(),
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
                    separatorBuilder: (_, _) => const SizedBox.shrink(),
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
}

class _TabButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _TabButton({
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: isSelected
          ? theme.colorScheme.primaryContainer
          : theme.colorScheme.surfaceContainerHighest,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Column(
            children: [
              Icon(
                icon,
                color: isSelected
                    ? theme.colorScheme.onPrimaryContainer
                    : theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: theme.textTheme.labelLarge?.copyWith(
                  color: isSelected
                      ? theme.colorScheme.onPrimaryContainer
                      : theme.colorScheme.onSurfaceVariant,
                  fontWeight:
                      isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
