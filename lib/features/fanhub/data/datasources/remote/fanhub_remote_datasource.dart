import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

abstract class FanHubRemoteDatasource {
  Future<List<FanHub>> getFanHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
    required bool includePrivate,
  });

  Future<List<FanHub>> getFanHubsByCategory({
    required int pageNo,
    required int pageSize,
    required String category,
  });

  Future<FanHub> getFanHubBySubdomain(String subdomain);

  Future<void> createFanHub(CreateFanHubRequest request);
}
