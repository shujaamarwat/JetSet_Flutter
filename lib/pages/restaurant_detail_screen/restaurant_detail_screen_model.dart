import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/components/item_simple_chip_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'restaurant_detail_screen_widget.dart' show RestaurantDetailScreenWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RestaurantDetailScreenModel
    extends FlutterFlowModel<RestaurantDetailScreenWidget> {
  ///  Local state fields for this page.

  List<PlacesRecord> placesLocal = [];
  void addToPlacesLocal(PlacesRecord item) => placesLocal.add(item);
  void removeFromPlacesLocal(PlacesRecord item) => placesLocal.remove(item);
  void removeAtIndexFromPlacesLocal(int index) => placesLocal.removeAt(index);
  void insertAtIndexInPlacesLocal(int index, PlacesRecord item) =>
      placesLocal.insert(index, item);
  void updatePlacesLocalAtIndex(int index, Function(PlacesRecord) updateFn) =>
      placesLocal[index] = updateFn(placesLocal[index]);

  bool isLoading = false;

  List<GuidesRecord> guidesLocal = [];
  void addToGuidesLocal(GuidesRecord item) => guidesLocal.add(item);
  void removeFromGuidesLocal(GuidesRecord item) => guidesLocal.remove(item);
  void removeAtIndexFromGuidesLocal(int index) => guidesLocal.removeAt(index);
  void insertAtIndexInGuidesLocal(int index, GuidesRecord item) =>
      guidesLocal.insert(index, item);
  void updateGuidesLocalAtIndex(int index, Function(GuidesRecord) updateFn) =>
      guidesLocal[index] = updateFn(guidesLocal[index]);

  ///  State fields for stateful widgets in this page.

  // Models for ItemSimpleChip dynamic component.
  late FlutterFlowDynamicModels<ItemSimpleChipModel> itemSimpleChipModels1;
  // Models for ItemSimpleChip dynamic component.
  late FlutterFlowDynamicModels<ItemSimpleChipModel> itemSimpleChipModels2;
  // Models for ItemSimpleChip dynamic component.
  late FlutterFlowDynamicModels<ItemSimpleChipModel> itemSimpleChipModels3;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    itemSimpleChipModels1 =
        FlutterFlowDynamicModels(() => ItemSimpleChipModel());
    itemSimpleChipModels2 =
        FlutterFlowDynamicModels(() => ItemSimpleChipModel());
    itemSimpleChipModels3 =
        FlutterFlowDynamicModels(() => ItemSimpleChipModel());
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    itemSimpleChipModels1.dispose();
    itemSimpleChipModels2.dispose();
    itemSimpleChipModels3.dispose();
    backButtonModel.dispose();
  }
}
