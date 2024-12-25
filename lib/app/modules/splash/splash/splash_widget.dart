import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'splash_model.dart';
export 'splash_model.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());

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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: Text(
                  'MamiMate',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Sora',
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 34.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/24697018_6988805.svg',
                    width: 315.0,
                    height: 384.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                'Empowering Motherhood, Together.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondary,
                      letterSpacing: 0.0,
                      fontStyle: FontStyle.italic,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('select_roles');
                  },
                  text: 'Get Started',
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
                    hoverTextColor: FlutterFlowTheme.of(context).primaryText,
                    hoverElevation: 3.0,
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('select_roles');
                },
                text: 'Login',
                options: FFButtonOptions(
                  width: 230.0,
                  height: 43.0,
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFFFEDE8),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).secondary,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                  hoverColor: FlutterFlowTheme.of(context).secondary,
                  hoverTextColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
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
