import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'registration_success_model.dart';
export 'registration_success_model.dart';

class RegistrationSuccessWidget extends StatefulWidget {
  const RegistrationSuccessWidget({super.key});

  @override
  State<RegistrationSuccessWidget> createState() =>
      _RegistrationSuccessWidgetState();
}

class _RegistrationSuccessWidgetState extends State<RegistrationSuccessWidget> {
  late RegistrationSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistrationSuccessModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).tertiary,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 20.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 80.0,
                            buttonSize: 77.0,
                            fillColor: FlutterFlowTheme.of(context).tertiary,
                            icon: Icon(
                              Icons.check,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 50.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Text(
                          'Success!',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Sora',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 20.0, 24.0, 0.0),
                          child: Text(
                            'We are now a family of 240+ women, connecting each one to quality healthcare for a safe and healthy pregnancy journey.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.98, -0.99),
                child: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).alternate,
                  icon: Icon(
                    Icons.arrow_back,
                    color: FlutterFlowTheme.of(context).tertiary,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('hospital_dashboard');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
