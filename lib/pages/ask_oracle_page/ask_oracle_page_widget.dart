import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:convert';
import 'dart:ui';
import 'package:chatbot_cun8yn/backend/api_requests/api_calls.dart'
    as chatbot_cun8yn_api_calls_util;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ask_oracle_page_model.dart';
export 'ask_oracle_page_model.dart';

/// Crea una nueva página en FlutterFlow que permita hacer preguntas y obtener
/// respuestas Yes/No desde la API https://yesno.wtf/api.
///
/// UI:
/// - AppBar con título "Yes / No Oracle"
/// - TextField para escribir una pregunta
/// - Botón "Preguntar"
/// - Sección de resultados con:
///   - Texto de respuesta ("yes" o "no")
///   - Imagen GIF desde la URL de la API
///
/// Comportamiento:
/// - Al presionar "Preguntar", ejecutar una llamada HTTP GET a
/// https://yesno.wtf/api
/// - La respuesta tiene el formato:
///   {
///     "answer": "yes|no",
///     "image": "https://...gif"
///   }
///
/// Estado:
/// - Variables: answer (String), imageUrl (String)
/// - Mapear answer ← response.answer
/// - Mapear imageUrl ← response.image
///
/// UX:
/// - Mostrar loading mientras se consulta la API
/// - Ocultar resultados hasta la primera consulta
/// - Permitir preguntas ilimitadas (cada consulta reemplaza la anterior)
/// - Mostrar error si la API falla
///
/// Implementación:
/// - Usar API Calls nativas de FlutterFlow
/// - No usar backend ni Firebase
class AskOraclePageWidget extends StatefulWidget {
  const AskOraclePageWidget({super.key});

  static String routeName = 'AskOraclePage';
  static String routePath = '/askOraclePage';

  @override
  State<AskOraclePageWidget> createState() => _AskOraclePageWidgetState();
}

class _AskOraclePageWidgetState extends State<AskOraclePageWidget> {
  late AskOraclePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AskOraclePageModel());

    _model.questionTextFieldTextController ??= TextEditingController();
    _model.questionTextFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFF9489F5),
          automaticallyImplyLeading: true,
          title: Text(
            'Yes / No Oracle',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Color(0x1A000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Ask the Turttles',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF101213),
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              'Think of a yes/no question and let the oracle decide your fate!',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF57636C),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            TextFormField(
                              controller:
                                  _model.questionTextFieldTextController,
                              focusNode: _model.questionTextFieldFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.questionTextFieldTextController',
                                Duration(milliseconds: 2000),
                                () => safeSetState(() {}),
                              ),
                              autofocus: false,
                              textInputAction: TextInputAction.done,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'What\'s your question?',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF57636C),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFE0E3E7),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF9489F5),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                filled: true,
                                fillColor: Color(0xFFF1F4F8),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 16.0, 16.0),
                                suffixIcon: _model
                                        .questionTextFieldTextController!
                                        .text
                                        .isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.questionTextFieldTextController
                                              ?.clear();
                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.clear,
                                          size: 22,
                                        ),
                                      )
                                    : null,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF101213),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontStyle,
                                  ),
                              maxLines: 3,
                              minLines: 1,
                              cursorColor: Color(0xFF9489F5),
                              validator: _model
                                  .questionTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.isThinking = true;
                                _model.oracleAnswer = null;
                                _model.oracleGif = null;
                                safeSetState(() {});
                                _model.apiResult = await AskOracleCall.call();

                                if ((_model.apiResult?.succeeded ?? true)) {
                                  await Future.delayed(
                                    Duration(
                                      milliseconds: 1000,
                                    ),
                                  );
                                  _model.isThinking = false;
                                  _model.oracleAnswer = AskOracleCall.answer(
                                    (_model.apiResult?.jsonBody ?? ''),
                                  );
                                  _model.oracleGif = AskOracleCall.gif(
                                    (_model.apiResult?.jsonBody ?? ''),
                                  );
                                  safeSetState(() {});
                                } else {
                                  await Future.delayed(
                                    Duration(
                                      milliseconds: 1000,
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'El oráculo está durmiendo (Error de conexión)',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  _model.isThinking = false;
                                  safeSetState(() {});
                                }

                                safeSetState(() {});
                              },
                              text: 'Ask the Oracle',
                              icon: Icon(
                                Icons.psychology_rounded,
                                size: 20.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconColor: Colors.white,
                                color: Color(0xFF9489F5),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8.0,
                            color: Color(0x1A000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (valueOrDefault<bool>(
                                  _model.isThinking == true,
                                  true,
                                ))
                                  Icon(
                                    Icons.hourglass_empty_rounded,
                                    color: Color(0xFF9489F5),
                                    size: 40.0,
                                  ),
                                if ((_model.isThinking == false) &&
                                    (_model.oracleGif != null &&
                                        _model.oracleGif != ''))
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      _model.oracleGif!,
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                      cacheWidth: 200,
                                      cacheHeight: 200,
                                    ),
                                  ),
                                Text(
                                  valueOrDefault<String>(
                                    () {
                                      if (_model.isThinking!) {
                                        return 'Consulting the stars...';
                                      } else if (_model.oracleAnswer != null &&
                                          _model.oracleAnswer != '') {
                                        return _model.oracleAnswer;
                                      } else {
                                        return 'Ask me anything...';
                                      }
                                    }(),
                                    'Ask me anything...',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.manrope(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF101213),
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                ),
                              ].divide(SizedBox(height: 20.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x4D9489F5),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: Color(0xFF9489F5),
                              size: 20.0,
                            ),
                            Text(
                              'Powered by yesno.wtf API',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF9489F5),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
