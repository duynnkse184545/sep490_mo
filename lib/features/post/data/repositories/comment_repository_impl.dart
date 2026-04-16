import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/comment_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/comment_models.dart';
import 'package:sep490_mo/features/post/data/repositories/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  final CommentRemoteDataSource _remoteDataSource;

  CommentRepositoryImpl({
    required CommentRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  @override
  TaskResult<List<Comment>> getPostComments(int postId) {
    return ErrorHandler.execute(() async {
      return await _remoteDataSource.getPostComments(postId);
    });
  }

  @override
  TaskVoid createComment(CommentRequest comment) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.createComment(comment);
    });
  }

  @override
  TaskVoid likeComment(int commentId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.likeComment(commentId);
    });
  }

  @override
  TaskVoid unlikeComment(int commentId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.unlikeComment(commentId);
    });
  }

  @override
  TaskVoid giftComment(int commentId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.giftComment(commentId);
    });
  }

  @override
  TaskVoid editComment(int commentId, String content) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.editComment(commentId, content);
    });
  }

  @override
  TaskVoid deleteComment(int commentId) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.deleteComment(commentId);
    });
  }
}
