import '/components/cookie_clicker_goto_widget.dart';
import '/components/mini_app_home_widget.dart';
import '/components/simple_chat_goto_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isThinking = false;

  String? oracleAnswer;

  String? oracleGif;

  ///  State fields for stateful widgets in this page.

  // Model for MiniAppHome component.
  late MiniAppHomeModel miniAppHomeModel;
  // Model for simple_chat_goto component.
  late SimpleChatGotoModel simpleChatGotoModel;
  // Model for cookie_clicker_goto component.
  late CookieClickerGotoModel cookieClickerGotoModel;

  @override
  void initState(BuildContext context) {
    miniAppHomeModel = createModel(context, () => MiniAppHomeModel());
    simpleChatGotoModel = createModel(context, () => SimpleChatGotoModel());
    cookieClickerGotoModel =
        createModel(context, () => CookieClickerGotoModel());
  }

  @override
  void dispose() {
    miniAppHomeModel.dispose();
    simpleChatGotoModel.dispose();
    cookieClickerGotoModel.dispose();
  }
}
