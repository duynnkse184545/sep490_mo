import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

part 'banner_api_service.g.dart';

@RestApi()
abstract class BannerApiService {
  factory BannerApiService(Dio dio) = _BannerApiService;

  @GET('/banners/active')
  Future<ApiResponse<Banner>> getBanner();

  @GET('/banners/items/all')
  Future<ApiResponse<List<BannerItem>>> getBannerItems(@Query('bannerId') int bannerId);

  @POST('/banners/gacha')
  Future<ApiResponse> gacha(@Query('bannerId') int bannerId);
}