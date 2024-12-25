import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_roles_model.dart';
export 'select_roles_model.dart';

class SelectRolesWidget extends StatefulWidget {
  const SelectRolesWidget({super.key});

  @override
  State<SelectRolesWidget> createState() => _SelectRolesWidgetState();
}

class _SelectRolesWidgetState extends State<SelectRolesWidget> {
  late SelectRolesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectRolesModel());

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
        backgroundColor: Color(0xFFFFEDE8),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFFFFEDE8),
                    icon: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 100.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(40.0, 200.0, 40.0, 0.0),
                  child: Text(
                    'Are you part of the hospital staff?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Sora',
                          color: FlutterFlowTheme.of(context).secondary,
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('hospital_dashboard');
                  },
                  text: 'Yes',
                  options: FFButtonOptions(
                    width: 230.0,
                    height: 43.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                    hoverColor: Color(0xFFFFEDE8),
                    hoverBorderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 1.0,
                    ),
                    hoverTextColor: FlutterFlowTheme.of(context).secondary,
                    hoverElevation: 3.0,
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('user_verification');
                },
                text: 'No',
                options: FFButtonOptions(
                  width: 230.0,
                  height: 43.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                  hoverColor: Color(0xFFFFEDE8),
                  hoverBorderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 1.0,
                  ),
                  hoverTextColor: FlutterFlowTheme.of(context).secondary,
                  hoverElevation: 3.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
