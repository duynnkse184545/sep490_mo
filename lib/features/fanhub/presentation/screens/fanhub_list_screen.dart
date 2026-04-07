import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_controller.dart';
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
        child: fanHubAsync.when(
          data: (fanHubState) => fanHubState.when(
            ready: (fanHubs) => RefreshIndicator(
              onRefresh: controller.refresh,
              child: ListView.separated(
                controller: scrollController,
                padding: const EdgeInsets.only(top: 8, bottom: 16),
                itemCount: fanHubs.length + 1,
                separatorBuilder: (_, _) => const SizedBox.shrink(),
                itemBuilder: (context, index) {
                  if (index == fanHubs.length) return const SizedBox.shrink();
                  return FanHubCard(fanHub: fanHubs[index]);
                },
              ),
            ),
            loadingMore: (fanHubs) => ListView.separated(
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
            refreshing: (fanHubs) => ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              itemCount: fanHubs.length,
              separatorBuilder: (_, _) => const SizedBox.shrink(),
              itemBuilder: (context, index) => FanHubCard(fanHub: fanHubs[index]),
            ),
            empty: () => const EmptyState(
              message: 'No Fan Hubs found',
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
    );
  }
}
