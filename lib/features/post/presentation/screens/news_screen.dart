import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/app/router/routes.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/empty_state.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/news_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/news_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_error_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/feed_loader_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/featured_news_widget.dart';
import 'package:sep490_mo/features/post/presentation/widgets/news_card_widget.dart';

class NewsScreen extends HookConsumerWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsAsync = ref.watch(newsControllerProvider);
    final controller = ref.read(newsControllerProvider.notifier);
    
    // Track which post is currently featured
    final selectedFeaturedPost = useState<Post?>(null);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: newsAsync.when(
          data: (newsState) => newsState.when(
            ready: (posts) => RefreshIndicator(
              onRefresh: () async {
                selectedFeaturedPost.value = null; // Reset selection on refresh
                await controller.refresh();
              },
              child: _buildNewsContent(context, posts, false, controller, selectedFeaturedPost),
            ),
            loadingMore: (posts) => RefreshIndicator(
              onRefresh: () async {
                selectedFeaturedPost.value = null;
                await controller.refresh();
              },
              child: _buildNewsContent(context, posts, true, controller, selectedFeaturedPost),
            ),
            empty: () => RefreshIndicator(
              onRefresh: controller.refresh,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: const EmptyState(
                    message: 'No news found from your joined hubs.',
                    icon: Icons.newspaper_outlined,
                  ),
                ),
              ),
            ),
            notJoinedAnyHub: () => _buildNotJoinedState(context),
          ),
          loading: () => const FeedLoaderWidget(),
          error: (error, stackTrace) => FeedErrorWidget(
            message: error.toString(),
            onRetry: controller.refresh,
          ),
        ),
      ),
    );
  }

  Widget _buildNewsContent(
    BuildContext context, 
    List<Post> posts, 
    bool isLoadingMore, 
    dynamic controller,
    ValueNotifier<Post?> selectedFeaturedPost,
  ) {
    if (posts.isEmpty) return const SizedBox.shrink();

    // 1. Determine which post to feature
    // Priority: User selection > First with media > First in list
    final featuredPost = selectedFeaturedPost.value ?? posts.firstWhere(
      (p) => p.mediaUrls.isNotEmpty, 
      orElse: () => posts.first
    );

    // 2. Filter other news to exclude the current featured post
    final otherNews = posts.where((p) => p.postId != featuredPost.postId).toList();

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 24),
      itemCount: 1 + otherNews.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        // Row 0: Featured Content
        if (index == 0) {
          return FeaturedNewsWidget(post: featuredPost);
        }
        
        // Row 1: Header for list
        if (index == 1) {
           return const Padding(
             padding: EdgeInsets.fromLTRB(20, 30, 20, 16),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   "OTHER NEWS",
                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color(0xFFC75050), letterSpacing: 1),
                 ),
                 SizedBox(height: 8),
                 Divider(height: 1, color: Colors.black12),
               ],
             ),
           );
        }

        // Remaining Rows: List Items
        final listIndex = index - 1; // offset by 1 for the featured row (header is injected at logic level)
        
        // Handle loading more indicator
        if (listIndex >= otherNews.length + 1) {
           return const Center(child: Padding(padding: EdgeInsets.all(16), child: CircularProgressIndicator()));
        }

        // Adjust index for the actual post (featured is 0, header is 1, first other news is 2)
        // Wait, index 1 is header. So index 2 is first item in otherNews.
        // Let's re-align logic:
        // index 0 -> Featured
        // index 1 -> Header
        // index 2+ -> otherNews[index - 2]
        
        if (index == 1) return const SizedBox.shrink(); // Handled above

        final actualOtherIndex = index - 2;
        if (actualOtherIndex < 0) return const SizedBox.shrink(); // Safety
        
        if (actualOtherIndex >= otherNews.length) {
           return isLoadingMore 
             ? const Center(child: Padding(padding: EdgeInsets.all(16), child: CircularProgressIndicator()))
             : const SizedBox.shrink();
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: NewsCardWidget(
            post: otherNews[actualOtherIndex],
            onTap: () {
              selectedFeaturedPost.value = otherNews[actualOtherIndex];
              // Optional: scroll to top
            },
          ),
        );
      },
    );
  }

  Widget _buildNotJoinedState(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.hub_outlined, size: 64, color: AppColors.border),
            const SizedBox(height: 16),
            const Text(
              'You haven\'t joined any hubs yet.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Join some hubs to stay updated with latest announcements and events!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ExploreRoute().go(context);
              },
              child: const Text('Explore Hubs'),
            ),
          ],
        ),
      ),
    );
  }
}
