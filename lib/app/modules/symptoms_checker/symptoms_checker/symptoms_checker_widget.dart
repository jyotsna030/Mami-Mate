import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'symptoms_checker_model.dart';
export 'symptoms_checker_model.dart';

class SymptomsCheckerWidget extends StatefulWidget {
  const SymptomsCheckerWidget({super.key});

  @override
  State<SymptomsCheckerWidget> createState() => _SymptomsCheckerWidgetState();
}

class _SymptomsCheckerWidgetState extends State<SymptomsCheckerWidget> {
  late SymptomsCheckerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SymptomsCheckerModel());

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
                Container(
                  width: 500.0,
                  height: 630.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFEDE8),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Text(
                            'Are you experiencing new or unusual symptoms? Don\'t worry—it\'s completely normal to feel this way sometimes.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Text(
                            'Check what you\'re going through to understand the possible reasons behind it.',
                            textAlign: TextAlign.justify,
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: StreamBuilder<List<SymptomsRecord>>(
                            stream: querySymptomsRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<SymptomsRecord> listViewSymptomsRecordList =
                                  snapshot.data!;

                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewSymptomsRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewSymptomsRecord =
                                      listViewSymptomsRecordList[listViewIndex];
                                  return Container(
                                    width: 100.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ToggleIcon(
                                          onPressed: () async {
                                            await listViewSymptomsRecord
                                                .reference
                                                .update({
                                              ...mapToFirestore(
                                                {
                                                  'isChecked':
                                                      !listViewSymptomsRecord
                                                          .isChecked,
                                                },
                                              ),
                                            });
                                          },
                                          value:
                                              listViewSymptomsRecord.isChecked,
                                          onIcon: Icon(
                                            Icons.check_box,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          offIcon: Icon(
                                            Icons.check_box_outline_blank,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            listViewSymptomsRecord.name,
                                            'Fatigue',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Submit',
                            options: FFButtonOptions(
                              width: 230.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(22.0),
                            ),
                          ),
                        ),
                      ],
                    ),
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
