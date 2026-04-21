import 'package:sep490_mo/core/utils/type_defs.dart';
import 'package:sep490_mo/features/user/data/models/vtuber_models.dart';

abstract class VtuberApplicationRepository {
  TaskResult<List<VtuberApplication>> getMyVtuberApplication();
  TaskVoid registerVtuber(VtuberRegisterRequest request);
}
