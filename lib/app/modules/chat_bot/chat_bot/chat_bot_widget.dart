import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_bot_model.dart';
export 'chat_bot_model.dart';

class ChatBotWidget extends StatefulWidget {
  const ChatBotWidget({super.key});

  @override
  State<ChatBotWidget> createState() => _ChatBotWidgetState();
}

class _ChatBotWidgetState extends State<ChatBotWidget> {
  late ChatBotModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatBotModel());

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
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 100.0,
                  height: 550.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
                          borderColor: Colors.transparent,
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
                          borderColor: Colors.transparent,
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
                          borderColor: Colors.transparent,
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
                          borderColor: Colors.transparent,
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
                          borderColor: Colors.transparent,
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
