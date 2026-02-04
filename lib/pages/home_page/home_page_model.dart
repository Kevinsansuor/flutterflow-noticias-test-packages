import '/components/mini_app_home_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MiniAppHome component.
  late MiniAppHomeModel miniAppHomeModel;

  @override
  void initState(BuildContext context) {
    miniAppHomeModel = createModel(context, () => MiniAppHomeModel());
  }

  @override
  void dispose() {
    miniAppHomeModel.dispose();
  }
}
