import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class PostRemoteDatasource {
  Future<void> createPost(CreatePostRequest request);
}
