import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/app_video_player.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

class FeaturedNewsWidget extends StatelessWidget {
  final Post post;
  const FeaturedNewsWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.05),
        border: const Border(bottom: BorderSide(color: AppColors.border, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.primary,
                backgroundImage: post.authorAvatarUrl != null ? NetworkImage(post.authorAvatarUrl!) : null,
                child: post.authorAvatarUrl == null 
                  ? Text(post.authorDisplayName[0].toUpperCase(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                  : null,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.authorDisplayName,
                    style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
                  ),
                  Text(
                    DateFormat('MMM dd, yyyy').format(post.createdAt),
                    style: const TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              _buildCategoryBadge(),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            post.title?.toUpperCase() ?? post.content.split('\n')[0].toUpperCase(),
            style: GoogleFonts.jersey20(
              fontSize: 44,
              height: 1.0,
              color: AppColors.primary,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 16),
          if (post.mediaUrls.isNotEmpty) _buildMediaArea(),
          const SizedBox(height: 20),
          Text(
            post.content,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              fontWeight: FontWeight.w600,
              color: Color(0xFF323232),
            ),
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 12),
          if (post.hashtags.isNotEmpty)
            Wrap(
              spacing: 8,
              children: post.hashtags.map((tag) => _buildTag(tag)).toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildMediaArea() {
    final url = post.mediaUrls[0];
    final isImage = _isImage(url);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.border, width: 2),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: isImage 
            ? Image.network(url, fit: BoxFit.cover)
            : AppVideoPlayer(url: url),
        ),
      ),
    );
  }

  Widget _buildCategoryBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Text(
        "FEATURED",
        style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w900, letterSpacing: 1),
      ),
    );
  }

  Widget _buildTag(String tag) {
    return Text(
      "#$tag",
      style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 13),
    );
  }

  bool _isImage(String url) {
    final lowercaseUrl = url.toLowerCase();
    return lowercaseUrl.endsWith('.jpg') ||
        lowercaseUrl.endsWith('.jpeg') ||
        lowercaseUrl.endsWith('.png') ||
        lowercaseUrl.endsWith('.gif') ||
        lowercaseUrl.endsWith('.webp') ||
        lowercaseUrl.endsWith('.bmp');
  }
}
