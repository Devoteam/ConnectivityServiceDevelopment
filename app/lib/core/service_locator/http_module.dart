import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../constants.dart';

@module
abstract class HttpModule {
  @dev
  @Named(kBaseUrl)
  String provideDevBaseUrl() => 'http://connectivity-service-dev-alb-500377647.eu-central-1.elb.amazonaws.com:8080';

  @Named(kBaseOptions)
  @lazySingleton
  BaseOptions provideDevBaseOptions(
    @Named(kBaseUrl) String url,
  ) =>
      BaseOptions(
        baseUrl: url,
        connectTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 10),
      );

  @Named(kBaseDioClient)
  @lazySingleton
  Dio dio(
    @Named(kBaseOptions) BaseOptions options,
  ) =>
      Dio(options);
}
