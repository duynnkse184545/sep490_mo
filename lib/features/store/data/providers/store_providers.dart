import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sep490_mo/core/providers/api_provider.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/api/shop_api_service.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/api/banner_api_service.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/shop_remote_datasource.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/shop_remote_datasource_impl.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/banner_remote_datasource.dart';
import 'package:sep490_mo/features/store/data/datasources/remote/banner_remote_datasource_impl.dart';
import 'package:sep490_mo/features/store/data/repositories/shop_repository.dart';
import 'package:sep490_mo/features/store/data/repositories/shop_repository_impl.dart';
import 'package:sep490_mo/features/store/data/repositories/banner_repository.dart';
import 'package:sep490_mo/features/store/data/repositories/banner_repository_impl.dart';

part 'store_providers.g.dart';

@riverpod
ShopApiService shopApiService(Ref ref) {
  return ShopApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
BannerApiService bannerApiService(Ref ref) {
  return BannerApiService(ref.watch(apiClientProvider).dio);
}

@riverpod
ShopRemoteDataSource shopRemoteDataSource(Ref ref) {
  return ShopRemoteDataSourceImpl(apiService: ref.watch(shopApiServiceProvider));
}

@riverpod
BannerRemoteDataSource bannerRemoteDataSource(Ref ref) {
  return BannerRemoteDataSourceImpl(apiService: ref.watch(bannerApiServiceProvider));
}

@riverpod
ShopRepository shopRepository(Ref ref) {
  return ShopRepositoryImpl(remoteDataSource: ref.watch(shopRemoteDataSourceProvider));
}

@riverpod
BannerRepository bannerRepository(Ref ref) {
  return BannerRepositoryImpl(remoteDataSource: ref.watch(bannerRemoteDataSourceProvider));
}
