import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/data/models/member_report_models.dart';

part 'member_moderation_api_service.g.dart';

@RestApi()
abstract class MemberModerationApiService {
  factory MemberModerationApiService(Dio dio) = _MemberModerationApiService;

  @GET('/fan-hub-member/pending-members/{fanHubId}')
  Future<ApiResponse<List<Member>>> getPendingMembers(
    @Path('fanHubId') int fanHubId,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @GET('/fan-hub-member/reports/members-with-reports/{fanHubId}')
  Future<ApiResponse<List<MemberWithReports>>> getMemberWithReports(
    @Path('fanHubId') int fanHubId,
    @Query('pageNo') int pageNo,
    @Query('pageSize') int pageSize,
    @Query('sortBy') String sortBy,
  );

  @PATCH('fan-hub-member/review')
  Future<ApiResponse> reviewMember(
    @Query('postId') int postId,
    @Query('status') MemberStatus status,
  );


  @PATCH('/fan-hub-member/resolve')
  Future<ApiResponse> resolveReport(
    @Query('reportId') int reportId,
    @Query('resolveMessage') String resolveMessage,
  );

  @PATCH('/fan-hub-member/resolve-bulk')
  Future<ApiResponse> resolveReportBulk(
    @Query('reportIds') List<int> reportIds,
    @Query('resolveMessage') String resolveMessage,
  );
}
