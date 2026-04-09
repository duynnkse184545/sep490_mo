import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';

part 'post_api_service.g.dart';

@RestApi()
abstract class PostApiService {
  factory PostApiService(Dio dio) = _PostApiService;

  @POST('/posts')
  Future<ApiResponse> createPost(@Body() CreatePostRequest post);
}
