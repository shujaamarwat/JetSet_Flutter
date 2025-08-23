import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/back_button_widget.dart';
import '/components/expansion_tile_widget.dart';
import '/components/item_home_popular_guides_widget.dart';
import '/components/item_place_list_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'guide_detail_screen_widget.dart' show GuideDetailScreenWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GuideDetailScreenModel extends FlutterFlowModel<GuideDetailScreenWidget> {
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

  // Stores action output result for [Action Block - getPlacesForDestination] action in GuideDetailScreen widget.
  List<PlacesRecord>? placesFromActionBloc;
  // Stores action output result for [Action Block - getPopularGuides] action in GuideDetailScreen widget.
  List<GuidesRecord>? popularGuidesFromActionBlock;
  // Models for ExpansionTile dynamic component.
  late FlutterFlowDynamicModels<ExpansionTileModel> expansionTileModels;
  // Models for ItemPlaceListView dynamic component.
  late FlutterFlowDynamicModels<ItemPlaceListViewModel> itemPlaceListViewModels;
  // Models for ItemHomePopularGuides dynamic component.
  late FlutterFlowDynamicModels<ItemHomePopularGuidesModel>
      itemHomePopularGuidesModels;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    expansionTileModels = FlutterFlowDynamicModels(() => ExpansionTileModel());
    itemPlaceListViewModels =
        FlutterFlowDynamicModels(() => ItemPlaceListViewModel());
    itemHomePopularGuidesModels =
        FlutterFlowDynamicModels(() => ItemHomePopularGuidesModel());
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    expansionTileModels.dispose();
    itemPlaceListViewModels.dispose();
    itemHomePopularGuidesModels.dispose();
    backButtonModel.dispose();
  }
}
