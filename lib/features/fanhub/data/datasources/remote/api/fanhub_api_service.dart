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
      @Query('category') String category
      );

  @POST('/fan-hub/create')
  Future<ApiResponse> createFanHub(
      @Body() CreateFanHubRequest request,
      );

  @POST('/fan-hub/upload-images/{fanHubId}')
  Future<ApiResponse> uploadFanHub(
      @Path('fanHubId') int fanHubId,
      @Query('backgrounds') List<String> backgrounds,
      @Body() FanHubUploadRequest request,
      );
  // @POST('/vhub/api/v1/fan-hub/upload-images/{fanHubId}')
  // @MultiPart()
  // Future<Response> uploadFanHubImages({
  //   @Path('fanHubId') required int fanHubId,
  //   @Part(name: 'backgrounds') required List<MultipartFile> backgrounds,
  //   @Part(name: 'banner') required String banner,
  //   @Part(name: 'avatar') required String avatar,
  // });
  // If banner/avatar are actual file uploads (base64 or URLs), they'd stay as String; if they're multipart files, you'd switch the body to @MultiPart() with @Part() annotations instead
}