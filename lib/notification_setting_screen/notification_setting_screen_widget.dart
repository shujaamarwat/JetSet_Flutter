import '/components/back_button_widget.dart';
import '/components/item_notificaiton_setting_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_setting_screen_model.dart';
export 'notification_setting_screen_model.dart';

class NotificationSettingScreenWidget extends StatefulWidget {
  const NotificationSettingScreenWidget({super.key});

  static String routeName = 'NotificationSettingScreen';
  static String routePath = '/notificationSettingScreen';

  @override
  State<NotificationSettingScreenWidget> createState() =>
      _NotificationSettingScreenWidgetState();
}

class _NotificationSettingScreenWidgetState
    extends State<NotificationSettingScreenWidget> {
  late NotificationSettingScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationSettingScreenModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.backButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: BackButtonWidget(
                      onTap: () async {},
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                      child: Text(
                        'Notifications Preferences',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F7F7),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Push',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            Text(
                              'Email',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ].divide(SizedBox(width: 15.0)),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text:
                                  'We imported flights and hotels from your email',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text: 'Someone commented on your guide',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text: 'Someone liked your guide',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text: 'Someone replied to your comment',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text: 'Tips about how to use JetSet',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text:
                                  'Reminders and tips about your upcoming trip',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text: 'JetSet improvements and updates',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel8,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text: 'Whenever we find cheap hotel deals',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel9,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text: 'Discounts and deals for Pro',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel10,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text: 'Feedback emails and surveys',
                            ),
                          ),
                          wrapWithModel(
                            model: _model.itemNotificaitonSettingModel11,
                            updateCallback: () => safeSetState(() {}),
                            child: ItemNotificaitonSettingWidget(
                              text:
                                  'We imported flights and hotels from your email',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Future.delayed(
                                  Duration(
                                    milliseconds: 1000,
                                  ),
                                );
                                context.safePop();
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Saved successfully',
                                      style: TextStyle(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 2500),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                );
                              },
                              text: 'Save',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
