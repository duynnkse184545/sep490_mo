import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

abstract class FanHubRemoteDataSource {
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

  Future<List<FanHub>> getMyHubs({
    required int pageNo,
    required int pageSize,
    required String sortBy,
  });

  Future<FanHub> getMyHubsAsOwner();

  Future<List<FanHub>> searchHubs({
    required String keyword,
    required int pageNo,
    required int pageSize,
    required String sortBy,
    required String sortDir,
  });

  Future<void> createFanHub({
    required CreateFanHubRequest request,
    String? bannerPath,
    String? avatarPath,
  });

  Future<void> uploadFanHubImages({
    required int fanHubId,
    required List<String> backgrounds,
    String? bannerPath,
    String? avatarPath,
  });
}
