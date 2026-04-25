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

  @GET('/user/{userId}/badges')
  Future<ApiResponse<List<Badge>>> getBadges(@Path('userId') int userId);

  @GET('/user/frames')
  Future<ApiResponse<List<Frame>>> getFrames();

  // For not getting the same items again
  @GET('/user/my-items')
  Future<ApiResponse<List<Frame>>> getMyItems();

  @GET('/user/my-daily-mission')
  Future<ApiResponse<DailyMission>> getDailyMission();

  @POST('/user/upload-avatar-frame')
  @MultiPart()
  Future<ApiResponse> updateAvatarFrame(
    @Query('frame') String? frame,
    @Part() MultipartFile avatar
  );

  @POST('/user/set-oshi')
  Future<ApiResponse> setOshi(@Body() String oshiUsername);

  @POST('/user/badge/select-display')
  Future<ApiResponse> selectDisplay(@Body() List<int> userBadgeIds);

  @PATCH('/user/update')
  Future<ApiResponse> updateProfile(@Body() UpdateProfileRequest request);
}
