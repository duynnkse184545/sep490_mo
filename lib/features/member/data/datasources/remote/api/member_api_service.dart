import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';

part 'member_api_service.g.dart';

@RestApi()
abstract class MemberApiService {
  factory MemberApiService(Dio dio) = _MemberApiService;

  @GET('/fan-hub-member/{fanHubId}/is-member')
  Future<ApiResponse<MemberCheckingResponse>> isMember(
    @Path('fanHubId') int fanHubId,
  );

  @GET('/fan-hub-member/members/{fanHubId}')
  Future<ApiResponse<List<Member>>> getMembers(
    @Path('fanHubId') int fanHubId,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
    @Query('username') String? username,
  );

  @GET('/fan-hub-member/members/{fanHubMemberId}/detail')
  Future<ApiResponse<Member>> getMemberDetail(
    @Path('fanHubMemberId') int fanHubMemberId,
  );

  @POST('/fan-hub-member/join/{fanHubId}')
  Future<ApiResponse> joinFanHub(@Path('fanHubId') int fanHubId);

  @POST('/fan-hub-member/leave/{fanHubId}')
  Future<ApiResponse> leaveFanHub(@Path('fanHubId') int fanHubId);

  @POST('/fan-hub-member/{fanHubId}/kick/{memberId}')
  Future<ApiResponse> kickMember(
    @Path('fanHubId') int fanHubId,
    @Path('memberId') int memberId,
  );

  @POST('/fan-hub-member/set-moderator/{fanHubId}')
  Future<ApiResponse> setModerator(
    @Path('fanHubId') int fanHubId,
    @Query('memberIds') List<int>? memberIds,
  );

  @POST('/fan-hub-member/remove-moderator/{fanHubId}')
  Future<ApiResponse> removeModerator(
    @Path('fanHubId') int fanHubId,
    @Query('memberIds') List<int>? memberIds,
  );
}
