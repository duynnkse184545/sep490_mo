import 'package:sep490_mo/features/auth/data/models/auth_models.dart';

abstract class AuthRemoteDataSource {
  Future<void> signUp(SignUpRequest request);

  Future<SignInResponse> signIn(SignInRequest request);

  Future<void> signOut();

  Future<void> verify(String email);

}
