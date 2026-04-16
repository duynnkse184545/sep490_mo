import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

part 'ban_api_service.g.dart';

@RestApi()
abstract class BanApiService {
  factory BanApiService(Dio dio) = _BanApiService;

  @GET('/fan-hub-member/bans/{fanHubId}')
  Future<ApiResponse<List<Member>>> getBannedMember(
    @Path('fanHubId') int fanHubId,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @POST('/fan-hub-member/ban')
  Future<ApiResponse> banMember(@Body() BanRequest banRequest);

  @POST('/fan-hub-member/ban/revoke')
  Future<ApiResponse> unbanMember(@Query('banId') int banId);
}
