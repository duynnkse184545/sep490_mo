import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'feed_api_service.g.dart';

@RestApi()
abstract class FeedApiService {
  factory FeedApiService(Dio dio) = _FeedApiService;

  @GET('/posts/feed')
  Future<ApiResponse<List<Post>>> getFeed(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );
}

// FeedRepository
// - /posts/feed
// - /posts/fan-hub/{fanHubId}
// - /posts/fan-hub/{fanHubId}/announcements-events
// - /posts/fan-hub/subdomain/{subdomain}
//
// PostRepository
// - /posts (create)
// - /posts/{postId}/reject
// - /posts/{postId}/pin
// - /posts/review
// - /posts/delete/{postId}
// - /posts/like, unlike
// - /posts/vote, un-vote
// - /posts/report
// - /posts/poll
// - /posts/bookmark
// - /posts/translate
// - /posts/summarize
// - /posts/user
//
// CommentRepository
// - /posts/comment
// - /posts/{postId}/comments
// - /posts/comment/like/{commentId}
// - /posts/comment/unlike/{commentId}
// - /posts/comment/gift/{commentId}
//
// ModerationRepository
// - /posts/fan-hub/{fanHubId}/pending
// - /posts/fan-hub/{fanHubId}/all
// - /posts/fan-hub/subdomain/{subdomain}/pending
// - /posts/fan-hub/subdomain/{subdomain}/all
// - /posts/reports/posts/{fanHubId}
// - /posts/validate
