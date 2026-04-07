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

  TaskVoid createFanHub(CreateFanHubRequest request);
}
