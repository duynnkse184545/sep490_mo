import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/user/data/models/vtuber_models.dart';

part 'vtuber_application_api_service.g.dart';

@RestApi()
abstract class VtuberApplicationApiService {
  factory VtuberApplicationApiService(Dio dio) = _VtuberApplicationApiService;

  @GET('/vtuber-application/my-applications')
  Future<ApiResponse<List<VtuberApplication>>> getMyVtuberApplication();

  @POST('/vtuber-application/register-vtuber')
  Future<ApiResponse> registerVtuber(@Body() VtuberRegisterRequest request);
}