import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class PostRepository {
  TaskVoid createPost(CreatePostRequest request);
}
