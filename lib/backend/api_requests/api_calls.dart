import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetRecipesCall {
  static Future<ApiCallResponse> call({
    String? recipeName = 'pasta',
    int? to = 10,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecipes',
      apiUrl: 'https://api.edamam.com/search',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': recipeName,
        'app_id': "b81142d1",
        'app_key': "86bbf82e0311d2ae473ae6c41fd8e4db",
        'to': to,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic recipes(dynamic response) => getJsonField(
        response,
        r'''$.hits''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
