import '../../../../core/utils/type_defs.dart';
import '../models/auth_models.dart';

abstract class AuthRepository {
  TaskVoid signUp(SignUpRequest request);
  TaskVoid signIn(SignInRequest request);
  TaskVoid signOut();
  TaskVoid verify(String email);
  TaskVoid checkAuthStatus();
}
