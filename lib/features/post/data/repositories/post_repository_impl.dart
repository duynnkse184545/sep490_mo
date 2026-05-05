import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource _remoteDataSource;

  PostRepositoryImpl({required PostRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  @override
  TaskVoid createPost(
    CreatePostRequest request, {
    List<String>? imagePaths,
    String? videoPath,
  }) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.createPost(
        request,
        imagePaths: imagePaths,
        videoPath: videoPath,
      );
    });
  }

  @override
  TaskResult<List<Post>> getBookmarked({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  }) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getBookmarked(
        pageNo: pageNo,
        pageSize: pageSize,
        sortBy: sortBy,
      );
    });
  }

  @override
  TaskResult<SummaryResponse> getSummary(int postId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getSummary(postId);
    });
  }

  @override
  TaskResult<TranslationResponse> getTranslation(int postId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getTranslation(postId);
    });
  }

  @override
  TaskVoid bookmark(int postId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.bookmark(postId);
    });
  }

  @override
  TaskVoid unbookmark(int postId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.unbookmark(postId);
    });
  }

  @override
  TaskVoid like(int postId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.like(postId);
    });
  }

  @override
  TaskVoid unlike(int postId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.unlike(postId);
    });
  }

  @override
  TaskVoid vote(int postId, int optionId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.vote(postId, optionId);
    });
  }

  @override
  TaskVoid unvote(int postId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.unvote(postId);
    });
  }

  @override
  TaskVoid createPoll(PollRequest poll) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.createPoll(poll);
    });
  }

  @override
  TaskVoid share(int postId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.share(postId);
    });
  }

  @override
  TaskVoid report(ReportRequest report) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.report(report);
    });
  }
}
