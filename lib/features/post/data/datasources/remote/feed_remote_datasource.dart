import 'package:sep490_mo/features/post/data/models/post_models.dart';

abstract class FeedRemoteDatasource {
  Future<List<Post>> getFeed(int pageNo, int pageSize, String sortBy);

  Future<List<Post>> getFeedByFanHub(
    String subdomain,
    int pageNo,
    int pageSize,
    String sortBy,
    String? postHashtags,
    String? authorUsername,
  );

  Future<List<Post>> getFanHubAnnouncementsEvents(
    int fanHubId,
    int pageNo,
    int pageSize,
    String sortBy,
  );
}
