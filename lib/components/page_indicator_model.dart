import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'page_indicator_widget.dart' show PageIndicatorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageIndicatorModel extends FlutterFlowModel<PageIndicatorWidget> {
  ///  Local state fields for this component.

  List<int> dots = [0, 1, 2];
  void addToDots(int item) => dots.add(item);
  void removeFromDots(int item) => dots.remove(item);
  void removeAtIndexFromDots(int index) => dots.removeAt(index);
  void insertAtIndexInDots(int index, int item) => dots.insert(index, item);
  void updateDotsAtIndex(int index, Function(int) updateFn) =>
      dots[index] = updateFn(dots[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
