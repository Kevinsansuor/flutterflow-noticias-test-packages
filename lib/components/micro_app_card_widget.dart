import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'micro_app_card_model.dart';
export 'micro_app_card_model.dart';

class MicroAppCardWidget extends StatefulWidget {
  const MicroAppCardWidget({
    super.key,
    String? cardFlutterTittle,
    required this.cardFlutterDescription,
  }) : this.cardFlutterTittle = cardFlutterTittle ?? 'Default';

  final String cardFlutterTittle;
  final String? cardFlutterDescription;

  @override
  State<MicroAppCardWidget> createState() => _MicroAppCardWidgetState();
}

class _MicroAppCardWidgetState extends State<MicroAppCardWidget> {
  late MicroAppCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MicroAppCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: AlignmentDirectional(-1.0, -1.0),
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xCF4B39EF), Color(0x70EE8B60)],
                  stops: [0.1, 0.9],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),

              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        0.0,
                        0.0,
                        10.0,
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,

                        decoration: BoxDecoration(),

                        child: Text(
                          valueOrDefault<String>(
                            widget!.cardFlutterTittle,
                            'Lorem ipsum dolor',
                          ),

                          style: FlutterFlowTheme.of(context).headlineSmall
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(
                                    context,
                                  ).headlineSmall.fontWeight,
                                  fontStyle: FlutterFlowTheme.of(
                                    context,
                                  ).headlineSmall.fontStyle,
                                ),

                                color: FlutterFlowTheme.of(context).alternate,

                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(
                                  context,
                                ).headlineSmall.fontWeight,
                                fontStyle: FlutterFlowTheme.of(
                                  context,
                                ).headlineSmall.fontStyle,
                              ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        0.0,
                        0.0,
                        15.0,
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,

                        decoration: BoxDecoration(),

                        child: Text(
                          valueOrDefault<String>(
                            widget!.cardFlutterDescription,
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat nulla eu fermentum ornare. Aliquam interdum nunc eu egestas efficitur. Nulla libero orci, iaculis nec nunc sit amet, volutpat luctus augue. Donec tempus quis velit sit amet suscipit. Donec nec nibh ipsum. Quisque posuere orci vel mattis condimentum. In vel justo fringilla neque vulputate posuere. Morbi eget quam erat. Maecenas iaculis tellus at lacus porttitor varius. Aenean tempus purus elit, non lacinia dui rutrum sit amet. Phasellus faucibus rhoncus ligula, vel tempor ligula sodales et. Ut eu pellentesque lorem, eu varius sem. Nunc sed ipsum nisl.',
                          ),
                          textAlign: TextAlign.start,
                          maxLines: 3,

                          style: FlutterFlowTheme.of(context).bodySmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(
                                    context,
                                  ).bodySmall.fontWeight,
                                  fontStyle: FlutterFlowTheme.of(
                                    context,
                                  ).bodySmall.fontStyle,
                                ),

                                color: FlutterFlowTheme.of(context).info,

                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(
                                  context,
                                ).bodySmall.fontWeight,
                                fontStyle: FlutterFlowTheme.of(
                                  context,
                                ).bodySmall.fontStyle,
                              ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      constraints: BoxConstraints(minHeight: 200.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            FlutterFlowTheme.of(context).alternate,
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/500_333.jpeg',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                          package: 'figma',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
