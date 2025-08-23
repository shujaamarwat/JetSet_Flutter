import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/icon_text_tile_widget.dart';
import '/components/item_plans_list_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pro_subscription_screen_model.dart';
export 'pro_subscription_screen_model.dart';

class ProSubscriptionScreenWidget extends StatefulWidget {
  const ProSubscriptionScreenWidget({super.key});

  static String routeName = 'ProSubscriptionScreen';
  static String routePath = '/proSubscriptionScreen';

  @override
  State<ProSubscriptionScreenWidget> createState() =>
      _ProSubscriptionScreenWidgetState();
}

class _ProSubscriptionScreenWidgetState
    extends State<ProSubscriptionScreenWidget> {
  late ProSubscriptionScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProSubscriptionScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedPlan = FFAppState().plans.firstOrNull;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(MoreScreenWidget.routeName);
                      },
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'JETSET',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'PRO!',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.manrope(
                              fontWeight: FontWeight.w800,
                              fontStyle: FontStyle.italic,
                            ),
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w800,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: Text(
                      'Upgrade to JetSet Pro and enjoy exclusive benefits',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.manrope(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 25.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Color(0x3F00A6A6),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.iconTextTileModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: IconTextTileWidget(
                            text: 'Access to advanced trip planning tools.',
                            icon: Icon(
                              Icons.settings_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.iconTextTileModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: IconTextTileWidget(
                            text: 'Unlock unlimited itinerary customization.',
                            icon: FaIcon(
                              FontAwesomeIcons.redoAlt,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.iconTextTileModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: IconTextTileWidget(
                            text:
                                'Ad-free experience for uninterrupted travel planning.',
                            icon: FaIcon(
                              FontAwesomeIcons.ad,
                              color: Color(0xFF6A3D07),
                              size: 24.0,
                            ),
                            color: Color(0xFFBA4B0D),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.iconTextTileModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: IconTextTileWidget(
                            text:
                                'Priority customer support for all your queries.',
                            icon: Icon(
                              Icons.phone_callback_outlined,
                              color: Color(0xFF3EA600),
                              size: 24.0,
                            ),
                            color: Color(0xFF3EA600),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 15.0))
                          .addToStart(SizedBox(height: 10.0))
                          .addToEnd(SizedBox(height: 10.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 0.0),
                  child: Text(
                    'Select a plan for your free trial.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Builder(
                  builder: (context) {
                    final plansListView = FFAppState().plans.toList();

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(plansListView.length,
                          (plansListViewIndex) {
                        final plansListViewItem =
                            plansListView[plansListViewIndex];
                        return ItemPlansListWidget(
                          key: Key(
                              'Keykzx_${plansListViewIndex}_of_${plansListView.length}'),
                          isSelected: plansListViewItem == _model.selectedPlan,
                          plan: plansListViewItem,
                          onSelect: (plan) async {
                            _model.selectedPlan = plan;
                            safeSetState(() {});
                          },
                        );
                      }),
                    );
                  },
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Future.delayed(
                        Duration(
                          milliseconds: 1000,
                        ),
                      );
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Saved successfully',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                          duration: Duration(milliseconds: 2500),
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                        ),
                      );
                    },
                    text: 'Start 7-Day Free Trial',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
