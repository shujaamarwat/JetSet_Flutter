import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/components/item_destination_attraction_widget.dart';
import '/components/item_must_visit_cities_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'things_to_do_screen_widget.dart' show ThingsToDoScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThingsToDoScreenModel extends FlutterFlowModel<ThingsToDoScreenWidget> {
  ///  Local state fields for this page.

  List<PlacesRecord> citiesLocal = [];
  void addToCitiesLocal(PlacesRecord item) => citiesLocal.add(item);
  void removeFromCitiesLocal(PlacesRecord item) => citiesLocal.remove(item);
  void removeAtIndexFromCitiesLocal(int index) => citiesLocal.removeAt(index);
  void insertAtIndexInCitiesLocal(int index, PlacesRecord item) =>
      citiesLocal.insert(index, item);
  void updateCitiesLocalAtIndex(int index, Function(PlacesRecord) updateFn) =>
      citiesLocal[index] = updateFn(citiesLocal[index]);

  bool isLoading = true;

  List<PlacesRecord> attractionsLocal = [];
  void addToAttractionsLocal(PlacesRecord item) => attractionsLocal.add(item);
  void removeFromAttractionsLocal(PlacesRecord item) =>
      attractionsLocal.remove(item);
  void removeAtIndexFromAttractionsLocal(int index) =>
      attractionsLocal.removeAt(index);
  void insertAtIndexInAttractionsLocal(int index, PlacesRecord item) =>
      attractionsLocal.insert(index, item);
  void updateAttractionsLocalAtIndex(
          int index, Function(PlacesRecord) updateFn) =>
      attractionsLocal[index] = updateFn(attractionsLocal[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - getPlacesForDestination] action in ThingsToDoScreen widget.
  List<PlacesRecord>? getcitiesFromAB;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Models for ItemMustVisitCities dynamic component.
  late FlutterFlowDynamicModels<ItemMustVisitCitiesModel>
      itemMustVisitCitiesModels;
  // Models for ItemDestinationAttraction dynamic component.
  late FlutterFlowDynamicModels<ItemDestinationAttractionModel>
      itemDestinationAttractionModels;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    itemMustVisitCitiesModels =
        FlutterFlowDynamicModels(() => ItemMustVisitCitiesModel());
    itemDestinationAttractionModels =
        FlutterFlowDynamicModels(() => ItemDestinationAttractionModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    itemMustVisitCitiesModels.dispose();
    itemDestinationAttractionModels.dispose();
  }
}
