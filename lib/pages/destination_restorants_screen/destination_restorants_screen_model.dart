import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/components/i_item_destination_restorant_widget.dart';
import '/components/label_large_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'destination_restorants_screen_widget.dart'
    show DestinationRestorantsScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DestinationRestorantsScreenModel
    extends FlutterFlowModel<DestinationRestorantsScreenWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  List<RestorantsRecord> restorantsLocal = [];
  void addToRestorantsLocal(RestorantsRecord item) => restorantsLocal.add(item);
  void removeFromRestorantsLocal(RestorantsRecord item) =>
      restorantsLocal.remove(item);
  void removeAtIndexFromRestorantsLocal(int index) =>
      restorantsLocal.removeAt(index);
  void insertAtIndexInRestorantsLocal(int index, RestorantsRecord item) =>
      restorantsLocal.insert(index, item);
  void updateRestorantsLocalAtIndex(
          int index, Function(RestorantsRecord) updateFn) =>
      restorantsLocal[index] = updateFn(restorantsLocal[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - getRestorantsOfDestonations] action in DestinationRestorantsScreen widget.
  List<RestorantsRecord>? restorantsFromAB;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for LabelLarge component.
  late LabelLargeModel labelLargeModel;
  // Models for IItemDestinationRestorant dynamic component.
  late FlutterFlowDynamicModels<IItemDestinationRestorantModel>
      iItemDestinationRestorantModels;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    labelLargeModel = createModel(context, () => LabelLargeModel());
    iItemDestinationRestorantModels =
        FlutterFlowDynamicModels(() => IItemDestinationRestorantModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    labelLargeModel.dispose();
    iItemDestinationRestorantModels.dispose();
  }
}
