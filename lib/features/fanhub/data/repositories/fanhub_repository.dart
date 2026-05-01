import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

abstract class FanHubRepository {
  TaskResult<List<FanHub>> getFanHubs({
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
    bool includePrivate = false,
  });

  TaskResult<List<FanHub>> getFanHubsByCategory({
    required int pageNo,
    required int pageSize,
    required String category,
  });

  TaskResult<FanHub> getFanHubBySubdomain(String subdomain);

  TaskResult<List<FanHub>> getMyHubs({
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
  });

  TaskResult<FanHub> getMyHubsAsOwner();

  TaskResult<List<FanHub>> searchHubs({
    required String keyword,
    int pageNo = 0,
    int pageSize = 20,
    String sortBy = 'createdAt',
    String sortDir = 'desc',
  });

  TaskVoid createFanHub({
    required CreateFanHubRequest request,
    String? bannerPath,
    String? avatarPath,
  });

  TaskVoid uploadFanHubImages({
    required int fanHubId,
    required List<String> backgrounds,
    String? bannerPath,
    String? avatarPath,
  });
}
