import 'dart:convert';
import 'dart:typed_data';
import "package:chatbot_cun8yn/backend/schema/structs/index.dart"
    as chatbot_cun8yn_data_schema;

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';

import 'package:ff_commons/api_requests/api_paging_params.dart';

export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AskOracleCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Ask Oracle',
      apiUrl: 'https://yesno.wtf/api',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? answer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.answer''',
      ));
  static bool? forced(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.forced''',
      ));
  static String? gif(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image''',
      ));
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
