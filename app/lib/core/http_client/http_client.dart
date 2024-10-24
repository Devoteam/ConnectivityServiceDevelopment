import '../../common/data/json_mapper.dart';

abstract class HttpClient {
  Future<T?> get<T>(String path, {Map<String, dynamic>? queryParameters, dynamic data, JsonMapper<T>? mapper});
  Future<List<T>?> getList<T>(String path,
      {Map<String, dynamic>? queryParameters, dynamic data, JsonMapper<T>? mapper});
}
