import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/back_button_widget.dart';
import '/components/expansion_tile_widget.dart';
import '/components/title_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'destination_info_screen_widget.dart' show DestinationInfoScreenWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DestinationInfoScreenModel
    extends FlutterFlowModel<DestinationInfoScreenWidget> {
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

  int selectedTab = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - getPlacesForDestination] action in DestinationInfoScreen widget.
  List<PlacesRecord>? placesFromActionBloc;
  // Stores action output result for [Action Block - getGuidesForDestination] action in DestinationInfoScreen widget.
  List<GuidesRecord>? guidesFromActionBloc;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel1;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel2;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel3;
  // Model for TitleSubtitle component.
  late TitleSubtitleModel titleSubtitleModel4;
  // Models for TitleSubtitle dynamic component.
  late FlutterFlowDynamicModels<TitleSubtitleModel> titleSubtitleModels5;
  // Models for ExpansionTile dynamic component.
  late FlutterFlowDynamicModels<ExpansionTileModel> expansionTileModels;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    titleSubtitleModel1 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel2 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel3 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModel4 = createModel(context, () => TitleSubtitleModel());
    titleSubtitleModels5 = FlutterFlowDynamicModels(() => TitleSubtitleModel());
    expansionTileModels = FlutterFlowDynamicModels(() => ExpansionTileModel());
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    titleSubtitleModel1.dispose();
    titleSubtitleModel2.dispose();
    titleSubtitleModel3.dispose();
    titleSubtitleModel4.dispose();
    titleSubtitleModels5.dispose();
    expansionTileModels.dispose();
    backButtonModel.dispose();
  }
}
