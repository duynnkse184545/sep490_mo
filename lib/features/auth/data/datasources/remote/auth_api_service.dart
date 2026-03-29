import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import '../../models/auth_models.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  // --- Auth Endpoints ---

  @POST('/auth/signup')
  Future<AuthResponse> signUp(@Body() SignUpRequest request);

  @POST('/auth/login')
  Future<ApiResponse<SignInResponse>> signIn(@Body() SignInRequest request);

  @POST('/logout')
  Future<void> signOut();

  @GET('/auth/v1/user')
  Future<AuthUser> getUser();
}
