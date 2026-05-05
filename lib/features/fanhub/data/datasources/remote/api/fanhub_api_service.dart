import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';

part 'fanhub_api_service.g.dart';

@RestApi()
abstract class FanHubApiService {
  factory FanHubApiService(Dio dio) = _FanHubApiService;

  @GET('/fan-hub/all')
  Future<ApiResponse<List<FanHub>>> getFanHubs(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
    @Query('includePrivate') bool includePrivate,
  );

  @GET('/fan-hub/top')
  Future<ApiResponse<List<FanHub>>> getFanHubsByCategory(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('category') String category,
  );

  @GET('/fan-hub/subdomain/{subdomain}')
  Future<ApiResponse<FanHub>> getFanHubBySubdomain(
    @Path('subdomain') String subdomain,
  );

  @GET('/fan-hub/my-hubs')
  Future<ApiResponse<List<FanHub>>> getMyHubs(
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @GET('/fan-hub/my-hub-as-owner')
  Future<ApiResponse<FanHub>> getMyHubsAsOwner();

  @GET('/fan-hub/analytics/{fanHubId}')
  Future<ApiResponse<FanHubAnalytics>> getFanHubAnalytics(@Path('fanHubId') int fanHubId);

  @GET('/fan-hub/search')
  Future<ApiResponse<List<FanHub>>> searchHubs(
    @Query('keyword') String keyword,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
    @Query('sortDir') String sortDir,
  );

  @POST('/fan-hub/create/v2')
  @MultiPart()
  Future<ApiResponse> createFanHub(
    @Part() MultipartFile request,
    @Part() MultipartFile? banner,
    @Part() MultipartFile? avatar,
  );

  @POST('/fan-hub/upload-images/{fanHubId}')
  @MultiPart()
  Future<ApiResponse> uploadFanHub(
    @Path('fanHubId') int fanHubId,
    @Query('backgrounds') List<String> backgrounds,
    @Part() MultipartFile? banner,
    @Part() MultipartFile? avatar,
  );

  @PATCH('/fan-hub/update/{fanHubId}')
  Future<ApiResponse> updateFanHub(
    @Path('fanHubId') int fanHubId,
    @Body() UpdateFanHubRequest request,
  );
}
