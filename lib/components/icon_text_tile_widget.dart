import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_text_tile_model.dart';
export 'icon_text_tile_model.dart';

class IconTextTileWidget extends StatefulWidget {
  const IconTextTileWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });

  final String? text;
  final Widget? icon;
  final Color? color;

  @override
  State<IconTextTileWidget> createState() => _IconTextTileWidgetState();
}

class _IconTextTileWidgetState extends State<IconTextTileWidget> {
  late IconTextTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconTextTileModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 45.0,
            height: 45.0,
            decoration: BoxDecoration(
              color: (widget!.color!).withOpacity(0.2),
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(
                color: (widget!.color!).withOpacity(0.6),
              ),
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: widget!.icon!,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
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
                      fontSize: 13.0,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
