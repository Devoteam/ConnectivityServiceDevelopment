import 'dart:convert';

abstract class JsonMapper<T> {
  JsonMapper();

  factory JsonMapper.fromNullable(
    T Function(Map<String, dynamic>? json) jsonToItem,
  ) =>
      _JsonMapper(
        jsonToItem,
      );

  factory JsonMapper.from(
    T Function(Map<String, dynamic> json) jsonToItem,
  ) =>
      _JsonMapper(
        (
          json,
        ) =>
            jsonToItem(
          json!,
        ),
      );

  T jsonToItem(Map<String, dynamic>? json);

  T dataToItem(dynamic data) {
    if (data is Map<String, dynamic>?) {
      return jsonToItem(data);
    } else if (data is String) {
      if (data.isEmpty) {
        return jsonToItem(null);
      }
      final valueMap = json.decode(data) as Map<String, dynamic>;
      return jsonToItem(valueMap);
    } else {
      throw ParserException('Excepted data is no JSON (type is ${data.runtimeType})');
    }
  }

  List<T?> dataToItems(dynamic list) {
    return (list as Iterable).map(dataToItem).toList();
  }

  dynamic map(dynamic data) {
    try {
      if (data is Iterable) {
        return dataToItems(data);
      } else {
        return dataToItem(data);
      }
    } catch (e, s) {
      throw ParserException(
        e,
        s,
      );
    }
  }
}

class _JsonMapper<T> extends JsonMapper<T> {
  final T Function(Map<String, dynamic>?) converter;

  _JsonMapper(this.converter) : super();

  @override
  T jsonToItem(Map<String, dynamic>? json) => converter(json);
}

class ParserException implements Exception {
  dynamic error;

  StackTrace? stackTrace;

  ParserException(
    this.error, [
    this.stackTrace,
  ]);

  @override
  String toString() {
    return 'ParserException{error: $error}';
  }
}
