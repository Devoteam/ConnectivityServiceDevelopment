import 'dart:io' as io;

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../common/data/json_mapper.dart';
import '../../constants.dart';
import 'error/errno.dart';
import 'error/web_exceptions.dart';
import 'http_client.dart';

@Named(kBaseHttpClient)
@LazySingleton(as: HttpClient)
class HttpClientImpl implements HttpClient {
  final Dio _dio;

  HttpClientImpl(
    @Named(kBaseDioClient) this._dio,
  );

  @override
  Future<T?> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    data,
    mapper,
  }) =>
      webRequest<T>(
        'GET',
        path,
        data,
        queryParameters,
        mapper,
      );

  @override
  Future<List<T>?> getList<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    data,
    mapper,
  }) =>
      webRequest<List<T>>(
        'GET',
        path,
        data,
        queryParameters,
        mapper,
      );

  @protected
  Future<T?> webRequest<T>(
    String method,
    String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    JsonMapper? mapper,
  ) async {
    try {
      final response = await _dio.request(
        path,
        queryParameters: queryParameters,
        data: data,
        options: Options(
          method: method,
        ),
      );

      return handleSuccessfulResponse(
        response,
        mapper,
      );
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      throw mapWebException(
        e,
      );
    }
  }

  @protected
  T? handleSuccessfulResponse<T>(
    Response response,
    JsonMapper? mapper,
  ) {
    if (response.data != null) {
      T data;

      if (mapper != null) {
        data = mapper.map(
          response.data,
        ) as T;
      } else {
        data = response.data as T;
      }
      return data;
    } else {
      return null;
    }
  }

  @protected
  Exception mapWebException<T>(dynamic webError) {
    if (webError is DioException) {
      final statusCode = webError.response?.statusCode;

      if (statusCode != null) {
        return WebException.fromStatusCode(statusCode);
      } else if (webError.error is io.SocketException) {
        final socketException = webError.error as io.SocketException;
        return socketException.osError?.errorCode != null
            ? fromErrNo(socketException.osError!.errorCode) ?? webError
            : webError;
      } else {
        return webError;
      }
    } else if (webError is ParserException) {
      return webError;
    } else {
      return UnknownWebException(webError);
    }
  }

  @protected
  Exception? fromErrNo(int errno) {
    if (errno == ErrorCodes.ECONNREFUSED) {
      return ConnectionRefusedException();
    } else if (errno == ErrorCodes.ENETDOWN || errno == ErrorCodes.ENETUNREACH) {
      return NoInternetException();
    } else {
      return null;
    }
  }
}
