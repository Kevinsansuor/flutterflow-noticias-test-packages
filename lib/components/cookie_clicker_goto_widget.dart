import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cookie_clicker_goto_model.dart';
export 'cookie_clicker_goto_model.dart';

class CookieClickerGotoWidget extends StatefulWidget {
  const CookieClickerGotoWidget({
    super.key,
    required this.onCookieClickerTap,
  });

  final Future Function()? onCookieClickerTap;

  @override
  State<CookieClickerGotoWidget> createState() =>
      _CookieClickerGotoWidgetState();
}

class _CookieClickerGotoWidgetState extends State<CookieClickerGotoWidget> {
  late CookieClickerGotoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CookieClickerGotoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.onCookieClickerTap?.call();
        },
        child: Container(
          width: 200.0,
          height: 250.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(15.0),
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/cookie_level_1.png',
                      fit: BoxFit.contain,
                      package: 'figma',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Cookie Clicker',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).alternate,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
