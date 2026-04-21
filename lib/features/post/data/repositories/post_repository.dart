import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class PostRepository {
  TaskVoid createPost(
    CreatePostRequest post, {
    List<String>? imagePaths,
    String? videoPath,
  });

  TaskResult<List<Post>> getBookmarked({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskResult<SummaryResponse> getSummary(int postId);

  TaskResult<TranslationResponse> getTranslation(int postId);

  TaskVoid bookmark(int postId);

  TaskVoid like(int postId);

  TaskVoid unlike(int postId);

  TaskVoid vote(int postId, int optionId);

  TaskVoid unvote(int postId);

  TaskVoid createPoll(PollRequest poll);

  TaskVoid share(int postId);

  TaskVoid report(ReportRequest report);
}
