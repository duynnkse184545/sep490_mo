import 'package:sep490_mo/core/error/error_handler.dart';
import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/datasources/remote/post_remote_datasource.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/data/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDatasource _remoteDataSource;

  PostRepositoryImpl({required PostRemoteDatasource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  @override
  TaskVoid createPost(CreatePostRequest request) {
    return ErrorHandler.execute(() async {
      await _remoteDataSource.createPost(request);
    });
  }
}
