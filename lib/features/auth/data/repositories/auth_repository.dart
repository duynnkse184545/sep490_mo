import '../../../../core/utils/type_defs.dart';
import '../models/auth_models.dart';

abstract class AuthRepository {
  //TaskResult<User> signUp(SignUpRequest request);
  TaskVoid signIn(SignInRequest request);
  TaskResult<void> signOut();

}
