import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

abstract class FanHubRepository {
  TaskResult<List<FanHub>> getFanHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
    required bool includePrivate,
  });

  TaskResult<List<FanHub>> getFanHubsByCategory({
    required int pageNo,
    required int pageSize,
    required String category,
  });

  TaskResult<FanHub> getFanHubBySubdomain(String subdomain);

  TaskResult<List<FanHub>> getMyHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  TaskVoid createFanHub(CreateFanHubRequest request);
}
