import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class FeedRemoteDatasource {
  Future<List<Post>> getFeed(int pageNo, int pageSize, String sortBy);
}