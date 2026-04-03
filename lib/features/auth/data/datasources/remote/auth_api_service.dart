import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import '../../models/auth_models.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  // --- Auth Endpoints ---

  @POST('/user/register')
  Future<ApiResponse> signUp(@Body() SignUpRequest request);

  @POST('/user/verify')
  Future<ApiResponse> verify(@Query('email') String email);

  @POST('/auth/login')
  Future<ApiResponse<SignInResponse>> signIn(@Body() SignInRequest request);

  // @GET('/auth/system-account-login')
  // Future<ApiResponse<SignInResponse>> signInSystemAcc(@Body() SignInRequest request);

  @POST('/logout')
  Future<void> signOut();

}
