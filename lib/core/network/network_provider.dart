import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'network_info.dart';

part 'network_provider.g.dart';

@riverpod
Connectivity connectivity(Ref ref){
  return Connectivity();
}

@riverpod
NetworkInfo networkInfo(Ref ref){
  return NetworkInfoImpl(ref.watch(connectivityProvider));
}

@riverpod
Stream networkStatus(Ref ref){
  final networkInfo = ref.watch(networkInfoProvider);
  return networkInfo.onConnectivityChanged;
}