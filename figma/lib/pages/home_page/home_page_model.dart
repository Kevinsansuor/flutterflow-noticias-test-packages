import '/components/micro_app_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MicroAppCard component.
  late MicroAppCardModel microAppCardModel1;
  // Model for MicroAppCard component.
  late MicroAppCardModel microAppCardModel2;
  // Model for MicroAppCard component.
  late MicroAppCardModel microAppCardModel3;

  @override
  void initState(BuildContext context) {
    microAppCardModel1 = createModel(context, () => MicroAppCardModel());
    microAppCardModel2 = createModel(context, () => MicroAppCardModel());
    microAppCardModel3 = createModel(context, () => MicroAppCardModel());
  }

  @override
  void dispose() {
    microAppCardModel1.dispose();
    microAppCardModel2.dispose();
    microAppCardModel3.dispose();
  }
}
