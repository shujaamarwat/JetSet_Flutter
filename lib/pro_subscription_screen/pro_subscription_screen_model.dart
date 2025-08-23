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
import 'pro_subscription_screen_widget.dart' show ProSubscriptionScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProSubscriptionScreenModel
    extends FlutterFlowModel<ProSubscriptionScreenWidget> {
  ///  Local state fields for this page.

  PlanTypeStruct? selectedPlan;
  void updateSelectedPlanStruct(Function(PlanTypeStruct) updateFn) {
    updateFn(selectedPlan ??= PlanTypeStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for IconTextTile component.
  late IconTextTileModel iconTextTileModel1;
  // Model for IconTextTile component.
  late IconTextTileModel iconTextTileModel2;
  // Model for IconTextTile component.
  late IconTextTileModel iconTextTileModel3;
  // Model for IconTextTile component.
  late IconTextTileModel iconTextTileModel4;

  @override
  void initState(BuildContext context) {
    iconTextTileModel1 = createModel(context, () => IconTextTileModel());
    iconTextTileModel2 = createModel(context, () => IconTextTileModel());
    iconTextTileModel3 = createModel(context, () => IconTextTileModel());
    iconTextTileModel4 = createModel(context, () => IconTextTileModel());
  }

  @override
  void dispose() {
    iconTextTileModel1.dispose();
    iconTextTileModel2.dispose();
    iconTextTileModel3.dispose();
    iconTextTileModel4.dispose();
  }
}
