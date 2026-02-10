import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String? currentSessionId;

  List<ChatMessageStruct> chatHistory = [];
  void addToChatHistory(ChatMessageStruct item) => chatHistory.add(item);
  void removeFromChatHistory(ChatMessageStruct item) =>
      chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void insertAtIndexInChatHistory(int index, ChatMessageStruct item) =>
      chatHistory.insert(index, item);
  void updateChatHistoryAtIndex(
          int index, Function(ChatMessageStruct) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  String? inputText;

  ///  State fields for stateful widgets in this page.

  // State field(s) for msgContent widget.
  FocusNode? msgContentFocusNode;
  TextEditingController? msgContentTextController;
  String? Function(BuildContext, String?)? msgContentTextControllerValidator;
  // Stores action output result for [Backend Call - API (SendMessage)] action in Button widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    msgContentFocusNode?.dispose();
    msgContentTextController?.dispose();
  }
}
