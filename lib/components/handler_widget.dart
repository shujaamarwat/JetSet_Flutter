import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'handler_model.dart';
export 'handler_model.dart';

class HandlerWidget extends StatefulWidget {
  const HandlerWidget({super.key});

  @override
  State<HandlerWidget> createState() => _HandlerWidgetState();
}

class _HandlerWidgetState extends State<HandlerWidget> {
  late HandlerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HandlerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 30.0),
        child: Container(
          width: 48.0,
          height: 6.0,
          decoration: BoxDecoration(
            color: Color(0xFFDAD9D9),
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
      ),
    );
  }
}
