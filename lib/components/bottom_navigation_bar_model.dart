import '/components/add_diolog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'bottom_navigation_bar_widget.dart' show BottomNavigationBarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarModel
    extends FlutterFlowModel<BottomNavigationBarWidget> {
  ///  Local state fields for this component.

  List<int> indexList = [0, 1, 2, 3];
  void addToIndexList(int item) => indexList.add(item);
  void removeFromIndexList(int item) => indexList.remove(item);
  void removeAtIndexFromIndexList(int index) => indexList.removeAt(index);
  void insertAtIndexInIndexList(int index, int item) =>
      indexList.insert(index, item);
  void updateIndexListAtIndex(int index, Function(int) updateFn) =>
      indexList[index] = updateFn(indexList[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
