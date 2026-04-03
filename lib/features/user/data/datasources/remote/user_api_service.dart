import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/user/data/models/user_models.dart';

part 'user_api_service.g.dart';

@RestApi()
abstract class UserApiService {
  factory UserApiService(Dio dio, {String baseUrl}) = _UserApiService;

  // --- Profiles Table Endpoints ---

  @GET('/user/{id}')
  Future<ApiResponse<User>> getUserById(@Path('id') int idQuery);


  @PATCH('/user/update')
  Future<ApiResponse> updateProfile(
    @Body() UpdateProfileRequest request,
  );

  @POST('/user/upload-avatar-frame')
  Future<ApiResponse> updateAvatarFrame(
    @Query('id') String idQuery,
    @Body() AvatarFrameRequest request,
  );

  @POST('/user/set-oshi')
  Future<ApiResponse> setOshi(@Body() String oshiUsername);
}
