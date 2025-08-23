import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_indicator_model.dart';
export 'page_indicator_model.dart';

class PageIndicatorWidget extends StatefulWidget {
  const PageIndicatorWidget({
    super.key,
    required this.currentIndex,
  });

  final int? currentIndex;

  @override
  State<PageIndicatorWidget> createState() => _PageIndicatorWidgetState();
}

class _PageIndicatorWidgetState extends State<PageIndicatorWidget> {
  late PageIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageIndicatorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final dotsList = _model.dots.toList();

        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(dotsList.length, (dotsListIndex) {
            final dotsListItem = dotsList[dotsListIndex];
            return Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: widget!.currentIndex == dotsListIndex
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).secondaryText,
                shape: BoxShape.circle,
              ),
            );
          }).divide(SizedBox(width: 10.0)),
        );
      },
    );
  }
}
