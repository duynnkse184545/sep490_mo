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

  @GET('/posts/fan-hub/subdomain/{subdomain}')
  Future<ApiResponse<List<Post>>> getFeedByFanHub(
    @Path('subdomain') String subdomain,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
    @Query('postHashtags') String? postHashtags,
    @Query('authorUsername') String? authorUsername,
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

