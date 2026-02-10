// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessageStruct extends BaseStruct {
  ChatMessageStruct({
    /// Para el contenido
    String? text,
    bool? isUser,
  })  : _text = text,
        _isUser = isUser;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "isUser" field.
  bool? _isUser;
  bool get isUser => _isUser ?? false;
  set isUser(bool? val) => _isUser = val;

  bool hasIsUser() => _isUser != null;

  static ChatMessageStruct fromMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        text: data['text'] as String?,
        isUser: data['isUser'] as bool?,
      );

  static ChatMessageStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatMessageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
        'isUser': _isUser,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'isUser': serializeParam(
          _isUser,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ChatMessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatMessageStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        isUser: deserializeParam(
          data['isUser'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ChatMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatMessageStruct &&
        text == other.text &&
        isUser == other.isUser;
  }

  @override
  int get hashCode => const ListEquality().hash([text, isUser]);
}

ChatMessageStruct createChatMessageStruct({
  String? text,
  bool? isUser,
}) =>
    ChatMessageStruct(
      text: text,
      isUser: isUser,
    );
