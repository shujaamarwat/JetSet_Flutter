import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_notificaiton_setting_model.dart';
export 'item_notificaiton_setting_model.dart';

class ItemNotificaitonSettingWidget extends StatefulWidget {
  const ItemNotificaitonSettingWidget({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  State<ItemNotificaitonSettingWidget> createState() =>
      _ItemNotificaitonSettingWidgetState();
}

class _ItemNotificaitonSettingWidgetState
    extends State<ItemNotificaitonSettingWidget> {
  late ItemNotificaitonSettingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemNotificaitonSettingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              valueOrDefault<String>(
                widget!.text,
                'NA',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.manrope(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
          Theme(
            data: ThemeData(
              checkboxTheme: CheckboxThemeData(
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
            ),
            child: Checkbox(
              value: _model.checkboxValue1 ??= true,
              onChanged: (newValue) async {
                safeSetState(() => _model.checkboxValue1 = newValue!);
              },
              side: (FlutterFlowTheme.of(context).alternate != null)
                  ? BorderSide(
                      width: 2,
                      color: FlutterFlowTheme.of(context).alternate!,
                    )
                  : null,
              activeColor: FlutterFlowTheme.of(context).primary,
              checkColor: FlutterFlowTheme.of(context).info,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Theme(
              data: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
              ),
              child: Checkbox(
                value: _model.checkboxValue2 ??= true,
                onChanged: (newValue) async {
                  safeSetState(() => _model.checkboxValue2 = newValue!);
                },
                side: (FlutterFlowTheme.of(context).alternate != null)
                    ? BorderSide(
                        width: 2,
                        color: FlutterFlowTheme.of(context).alternate!,
                      )
                    : null,
                activeColor: FlutterFlowTheme.of(context).primary,
                checkColor: FlutterFlowTheme.of(context).info,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
