import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/error_retry_widget.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/fanhub_detail_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/fanhub_detail_state.dart';

class FanHubDetailScreen extends HookConsumerWidget {
  final String subdomain;
  final Widget feedWidget;
  final Widget speedDial;
  final Widget Function(bool requiresApproval) joinButtonBuilder;

  const FanHubDetailScreen({
    super.key,
    required this.subdomain,
    required this.feedWidget,
    required this.speedDial,
    required this.joinButtonBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(
      fanHubDetailControllerProvider(subdomain: subdomain),
    );
    final controller = ref.read(
      fanHubDetailControllerProvider(subdomain: subdomain).notifier,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: speedDial,
      body: detailAsync.when(
        loading: () => const Loader(),
        error: (error, stackTrace) =>
            ErrorBanner(message: error.toString(), onRetry: controller.refresh),
        data: (state) => state.when(
          loaded: (fanHub) {
            final hubColor = fanHub.themeColor != null && fanHub.themeColor != 'string'
                ? Color(int.parse(fanHub.themeColor!.replaceFirst('#', '0xff')))
                : Theme.of(context).colorScheme.primary;

            return RefreshIndicator(
              onRefresh: controller.refresh,
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  // 1. Parallax Banner & Header
                  _buildSliverAppBar(context, fanHub, hubColor),

                  // 2. Hub Info / About Section
                  SliverToBoxAdapter(
                    child: _buildAboutSection(context, fanHub, hubColor),
                  ),

                  // 3. Post Feed Header
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text(
                        "Posts Feed",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  // 4. Feed Widget (Injected)
                  SliverToBoxAdapter(child: feedWidget),

                  const SliverToBoxAdapter(child: SizedBox(height: 80)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSliverAppBar(
    BuildContext context,
    FanHub fanHub,
    Color themeColor,
  ) {
    return SliverAppBar(
      expandedHeight: 280,
      pinned: true,
      backgroundColor: themeColor,
      iconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Banner Image
            if (fanHub.bannerUrl != null)
              Image.network(fanHub.bannerUrl!, fit: BoxFit.cover)
            else
              Container(color: themeColor.withValues(alpha: 0.5)),

            // Bottom Overlay (Header Content)
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.8),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Avatar with Retro Border
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: themeColor, width: 3),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: fanHub.avatarUrl != null
                          ? Image.network(fanHub.avatarUrl!, fit: BoxFit.cover)
                          : Container(
                              color: themeColor,
                              alignment: Alignment.center,
                              child: Text(
                                fanHub.hubName[0].toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Title & Owner
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          fanHub.hubName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "h/${fanHub.subdomain}",
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "by ${fanHub.ownerDisplayName}",
                          style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Join Button (built using builder)
                  joinButtonBuilder(fanHub.requiresApproval),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutSection(
    BuildContext context,
    FanHub fanHub,
    Color themeColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 2),
        boxShadow: const [
          BoxShadow(
            color: AppColors.border,
            offset: Offset(6, 6),
            blurRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Community",
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            fanHub.description ?? "No description",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: const Color(0xFF666666),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStat("Members", fanHub.memberCount.toString()),
              const SizedBox(width: 24),
              Expanded(
                child: Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: fanHub.categories
                      .map<Widget>((cat) => _buildCategoryTag(context, cat))
                      .toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 11)),
      ],
    );
  }

  Widget _buildCategoryTag(BuildContext context, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
