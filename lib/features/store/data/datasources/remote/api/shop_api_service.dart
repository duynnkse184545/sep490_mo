import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

part 'shop_api_service.g.dart';

@RestApi()
abstract class ShopApiService {
  factory ShopApiService(Dio dio) = _ShopApiService;

  @GET('/shop-items/all')
  Future<ApiResponse<List<ShopItem>>> getAllShopItems();

  @POST('/shop-items/purchase')
  Future<ApiResponse> purchase(@Query('shopItemId') int shopItemId);

}