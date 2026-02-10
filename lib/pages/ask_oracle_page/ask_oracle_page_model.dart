import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import 'ask_oracle_page_widget.dart' show AskOraclePageWidget;
import 'package:chatbot_cun8yn/backend/api_requests/api_calls.dart'
    as chatbot_cun8yn_api_calls_util;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AskOraclePageModel extends FlutterFlowModel<AskOraclePageWidget> {
  ///  Local state fields for this page.
  /// Para saber si está cargando
  bool? isThinking = false;

  /// Para guardar "yes" o "no"
  String? oracleAnswer;

  String? oracleGif;

  ///  State fields for stateful widgets in this page.

  // State field(s) for QuestionTextField widget.
  FocusNode? questionTextFieldFocusNode;
  TextEditingController? questionTextFieldTextController;
  String? Function(BuildContext, String?)?
      questionTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Ask Oracle)] action in Button widget.
  ApiCallResponse? apiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    questionTextFieldFocusNode?.dispose();
    questionTextFieldTextController?.dispose();
  }
}
