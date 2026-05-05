import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class PostRemoteDataSource {
  Future<void> createPost(
    CreatePostRequest post, {
    List<String>? imagePaths,
    String? videoPath,
  });

  Future<List<Post>> getBookmarked({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<SummaryResponse> getSummary(int postId);

  Future<TranslationResponse> getTranslation(int postId);

  Future<void> bookmark(int postId);

  Future<void> unbookmark(int postId);

  Future<void> like(int postId);

  Future<void> unlike(int postId);

  Future<void> vote(int postId, int optionId);

  Future<void> unvote(int postId);

  Future<void> createPoll(PollRequest poll);

  Future<void> share(int postId);

  Future<void> report(ReportRequest report);
}
