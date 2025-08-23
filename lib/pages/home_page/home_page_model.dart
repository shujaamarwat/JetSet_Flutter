import '/backend/backend.dart';
import '/components/bottom_navigation_bar_widget.dart';
import '/components/item_home_popular_guides_widget.dart';
import '/components/item_popular_destinations_widget.dart';
import '/components/plan_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  List<DestinationsRecord> destinationsLocal = [];
  void addToDestinationsLocal(DestinationsRecord item) =>
      destinationsLocal.add(item);
  void removeFromDestinationsLocal(DestinationsRecord item) =>
      destinationsLocal.remove(item);
  void removeAtIndexFromDestinationsLocal(int index) =>
      destinationsLocal.removeAt(index);
  void insertAtIndexInDestinationsLocal(int index, DestinationsRecord item) =>
      destinationsLocal.insert(index, item);
  void updateDestinationsLocalAtIndex(
          int index, Function(DestinationsRecord) updateFn) =>
      destinationsLocal[index] = updateFn(destinationsLocal[index]);

  List<GuidesRecord> popularGuidesLocal = [];
  void addToPopularGuidesLocal(GuidesRecord item) =>
      popularGuidesLocal.add(item);
  void removeFromPopularGuidesLocal(GuidesRecord item) =>
      popularGuidesLocal.remove(item);
  void removeAtIndexFromPopularGuidesLocal(int index) =>
      popularGuidesLocal.removeAt(index);
  void insertAtIndexInPopularGuidesLocal(int index, GuidesRecord item) =>
      popularGuidesLocal.insert(index, item);
  void updatePopularGuidesLocalAtIndex(
          int index, Function(GuidesRecord) updateFn) =>
      popularGuidesLocal[index] = updateFn(popularGuidesLocal[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - getDestinations] action in HomePage widget.
  List<DestinationsRecord>? destinationsFromActionBlock;
  // Stores action output result for [Action Block - getPopularGuides] action in HomePage widget.
  List<GuidesRecord>? popularGuidesFromActionBlock;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for ItemPopularDestinations dynamic component.
  late FlutterFlowDynamicModels<ItemPopularDestinationsModel>
      itemPopularDestinationsModels;
  // Model for PlanCard component.
  late PlanCardModel planCardModel;
  // Models for ItemHomePopularGuides dynamic component.
  late FlutterFlowDynamicModels<ItemHomePopularGuidesModel>
      itemHomePopularGuidesModels;
  // Model for BottomNavigationBar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    itemPopularDestinationsModels =
        FlutterFlowDynamicModels(() => ItemPopularDestinationsModel());
    planCardModel = createModel(context, () => PlanCardModel());
    itemHomePopularGuidesModels =
        FlutterFlowDynamicModels(() => ItemHomePopularGuidesModel());
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    itemPopularDestinationsModels.dispose();
    planCardModel.dispose();
    itemHomePopularGuidesModels.dispose();
    bottomNavigationBarModel.dispose();
  }
}
