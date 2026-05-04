import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sep490_mo/core/models/api_response_wrapper.dart';
import 'package:sep490_mo/features/payment/data/models/payment_models.dart';

part 'payment_api_service.g.dart';

@RestApi()
abstract class PaymentApiService {
  factory PaymentApiService(Dio dio) = _PaymentApiService;

  @GET('/payment/packages')
  Future<ApiResponse<List<Payment>>> getPackages();

  @GET('/payment/cancel/{id}')
  Future<CancelPaymentResponse> cancelPayment(@Path('id') int id);

  @POST('/payment/create-payment-link')
  Future<ApiResponse<String>> createPayment(@Body() CreatePaymentRequest request);
}
