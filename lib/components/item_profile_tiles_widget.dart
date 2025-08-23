import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_profile_tiles_model.dart';
export 'item_profile_tiles_model.dart';

class ItemProfileTilesWidget extends StatefulWidget {
  const ItemProfileTilesWidget({
    super.key,
    required this.label,
    required this.icon,
  });

  final String? label;
  final Widget? icon;

  @override
  State<ItemProfileTilesWidget> createState() => _ItemProfileTilesWidgetState();
}

class _ItemProfileTilesWidgetState extends State<ItemProfileTilesWidget> {
  late ItemProfileTilesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemProfileTilesModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          widget!.icon!,
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget!.label,
                  'NA',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_sharp,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 18.0,
          ),
        ],
      ),
    );
  }
}
