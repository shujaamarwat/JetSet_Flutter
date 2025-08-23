import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/components/item_guide_of_destination_widget.dart';
import '/components/item_place_of_destination_widget.dart';
import '/components/plan_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'destination_detail_screen_widget.dart'
    show DestinationDetailScreenWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DestinationDetailScreenModel
    extends FlutterFlowModel<DestinationDetailScreenWidget> {
  ///  Local state fields for this page.

  List<PlacesRecord> placesLocal = [];
  void addToPlacesLocal(PlacesRecord item) => placesLocal.add(item);
  void removeFromPlacesLocal(PlacesRecord item) => placesLocal.remove(item);
  void removeAtIndexFromPlacesLocal(int index) => placesLocal.removeAt(index);
  void insertAtIndexInPlacesLocal(int index, PlacesRecord item) =>
      placesLocal.insert(index, item);
  void updatePlacesLocalAtIndex(int index, Function(PlacesRecord) updateFn) =>
      placesLocal[index] = updateFn(placesLocal[index]);

  bool isLoading = true;

  List<GuidesRecord> guidesLocal = [];
  void addToGuidesLocal(GuidesRecord item) => guidesLocal.add(item);
  void removeFromGuidesLocal(GuidesRecord item) => guidesLocal.remove(item);
  void removeAtIndexFromGuidesLocal(int index) => guidesLocal.removeAt(index);
  void insertAtIndexInGuidesLocal(int index, GuidesRecord item) =>
      guidesLocal.insert(index, item);
  void updateGuidesLocalAtIndex(int index, Function(GuidesRecord) updateFn) =>
      guidesLocal[index] = updateFn(guidesLocal[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - getPlacesForDestination] action in DestinationDetailScreen widget.
  List<PlacesRecord>? placesFromActionBloc;
  // Stores action output result for [Action Block - getGuidesForDestination] action in DestinationDetailScreen widget.
  List<GuidesRecord>? guidesFromActionBloc;
  // Models for ItemPlaceOfDestination dynamic component.
  late FlutterFlowDynamicModels<ItemPlaceOfDestinationModel>
      itemPlaceOfDestinationModels;
  // Model for PlanCard component.
  late PlanCardModel planCardModel;
  // Models for ItemGuideOfDestination dynamic component.
  late FlutterFlowDynamicModels<ItemGuideOfDestinationModel>
      itemGuideOfDestinationModels;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    itemPlaceOfDestinationModels =
        FlutterFlowDynamicModels(() => ItemPlaceOfDestinationModel());
    planCardModel = createModel(context, () => PlanCardModel());
    itemGuideOfDestinationModels =
        FlutterFlowDynamicModels(() => ItemGuideOfDestinationModel());
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    itemPlaceOfDestinationModels.dispose();
    planCardModel.dispose();
    itemGuideOfDestinationModels.dispose();
    backButtonModel.dispose();
  }
}
