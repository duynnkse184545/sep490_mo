import 'package:sep490_mo/features/user/data/models/vtuber_models.dart';

abstract class VtuberApplicationRemoteDataSource {
  Future<List<VtuberApplication>> getMyVtuberApplication();
  Future<void> registerVtuber(VtuberRegisterRequest request);
}
