import '/backend/backend.dart';
import '/components/back_button_widget.dart';
import '/components/item_place_list_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'destination_places_screen_widget.dart'
    show DestinationPlacesScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DestinationPlacesScreenModel
    extends FlutterFlowModel<DestinationPlacesScreenWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  List<PlacesRecord> placesLocal = [];
  void addToPlacesLocal(PlacesRecord item) => placesLocal.add(item);
  void removeFromPlacesLocal(PlacesRecord item) => placesLocal.remove(item);
  void removeAtIndexFromPlacesLocal(int index) => placesLocal.removeAt(index);
  void insertAtIndexInPlacesLocal(int index, PlacesRecord item) =>
      placesLocal.insert(index, item);
  void updatePlacesLocalAtIndex(int index, Function(PlacesRecord) updateFn) =>
      placesLocal[index] = updateFn(placesLocal[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - getPlacesForDestination] action in DestinationPlacesScreen widget.
  List<PlacesRecord>? placesFromAB;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Models for ItemPlaceListView dynamic component.
  late FlutterFlowDynamicModels<ItemPlaceListViewModel> itemPlaceListViewModels;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    itemPlaceListViewModels =
        FlutterFlowDynamicModels(() => ItemPlaceListViewModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    itemPlaceListViewModels.dispose();
  }
}
