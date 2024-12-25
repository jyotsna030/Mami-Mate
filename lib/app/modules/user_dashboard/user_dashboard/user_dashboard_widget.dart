import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_dashboard_model.dart';
export 'user_dashboard_model.dart';

class UserDashboardWidget extends StatefulWidget {
  const UserDashboardWidget({super.key});

  @override
  State<UserDashboardWidget> createState() => _UserDashboardWidgetState();
}

class _UserDashboardWidgetState extends State<UserDashboardWidget> {
  late UserDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDashboardModel());

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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    width: 355.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/abstract-blur-empty-green-gradient-studio-well-use-as-backgroundwebsite-templateframebusiness-report_(1).jpg',
                        ).image,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/13184671_5167699-removebg-preview.png',
                            width: 124.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Text(
                                'Empowering Women with Care,\nConnection, and a Healthier \nTomorrow',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFFCE5252),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Track your journey with us',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Container(
                      width: 363.0,
                      height: 165.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          width: 2.0,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.asset(
                          'assets/images/Your_Baby_is_of_the_size_of_a_grape_now_!_(2).png',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: 120.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: FlutterFlowCountController(
                      decrementIconBuilder: (enabled) => Icon(
                        Icons.remove_rounded,
                        color: enabled
                            ? FlutterFlowTheme.of(context).secondaryText
                            : FlutterFlowTheme.of(context).alternate,
                        size: 24.0,
                      ),
                      incrementIconBuilder: (enabled) => Icon(
                        Icons.add_rounded,
                        color: enabled
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).alternate,
                        size: 24.0,
                      ),
                      countBuilder: (count) => Text(
                        count.toString(),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Sora',
                              letterSpacing: 0.0,
                            ),
                      ),
                      count: _model.countControllerValue ??= 8,
                      updateCount: (count) => safeSetState(
                          () => _model.countControllerValue = count),
                      stepSize: 1,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 20.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Container(
                            width: 159.0,
                            height: 170.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                                width: 1.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Track your symptoms',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 60.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    icon: Icon(
                                      Icons.add_box,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 44.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed('symptoms_checker');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Container(
                            width: 159.0,
                            height: 170.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                                width: 1.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Chat with your health experts',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 8.0,
                                    buttonSize: 60.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    icon: Icon(
                                      Icons.wechat_sharp,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 44.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed('chat_screen');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 34.0, 0.0, 0.0),
                  child: Container(
                    width: 358.0,
                    height: 85.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFEDE8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 50.0,
                          child: VerticalDivider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: Icon(
                            Icons.home,
                            color: FlutterFlowTheme.of(context).info,
                            size: 34.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('user_dashboard');
                          },
                        ),
                        SizedBox(
                          height: 50.0,
                          child: VerticalDivider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: Icon(
                            Icons.wechat_sharp,
                            color: FlutterFlowTheme.of(context).info,
                            size: 34.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('chat_screen');
                          },
                        ),
                        SizedBox(
                          height: 50.0,
                          child: VerticalDivider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: Icon(
                            Icons.child_care_sharp,
                            color: FlutterFlowTheme.of(context).info,
                            size: 34.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('chat_bot');
                          },
                        ),
                        SizedBox(
                          height: 50.0,
                          child: VerticalDivider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: Icon(
                            Icons.track_changes,
                            color: FlutterFlowTheme.of(context).info,
                            size: 34.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        SizedBox(
                          height: 50.0,
                          child: VerticalDivider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: 50.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: Icon(
                            Icons.theater_comedy_sharp,
                            color: FlutterFlowTheme.of(context).info,
                            size: 34.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('partner_collab');
                          },
                        ),
                        SizedBox(
                          height: 50.0,
                          child: VerticalDivider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                      ],
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
