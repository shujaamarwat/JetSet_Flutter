import '/auth/firebase_auth/auth_util.dart';
import '/components/bottom_navigation_bar_widget.dart';
import '/components/divider_widget.dart';
import '/components/item_profile_tiles_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'more_screen_widget.dart' show MoreScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MoreScreenModel extends FlutterFlowModel<MoreScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel1;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel2;
  // Model for Divider component.
  late DividerModel dividerModel1;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel3;
  // Model for Divider component.
  late DividerModel dividerModel2;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel4;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel5;
  // Model for Divider component.
  late DividerModel dividerModel3;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel6;
  // Model for Divider component.
  late DividerModel dividerModel4;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel7;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel8;
  // Model for Divider component.
  late DividerModel dividerModel5;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel9;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel10;
  // Model for BottomNavigationBar component.
  late BottomNavigationBarModel bottomNavigationBarModel;

  @override
  void initState(BuildContext context) {
    itemProfileTilesModel1 =
        createModel(context, () => ItemProfileTilesModel());
    itemProfileTilesModel2 =
        createModel(context, () => ItemProfileTilesModel());
    dividerModel1 = createModel(context, () => DividerModel());
    itemProfileTilesModel3 =
        createModel(context, () => ItemProfileTilesModel());
    dividerModel2 = createModel(context, () => DividerModel());
    itemProfileTilesModel4 =
        createModel(context, () => ItemProfileTilesModel());
    itemProfileTilesModel5 =
        createModel(context, () => ItemProfileTilesModel());
    dividerModel3 = createModel(context, () => DividerModel());
    itemProfileTilesModel6 =
        createModel(context, () => ItemProfileTilesModel());
    dividerModel4 = createModel(context, () => DividerModel());
    itemProfileTilesModel7 =
        createModel(context, () => ItemProfileTilesModel());
    itemProfileTilesModel8 =
        createModel(context, () => ItemProfileTilesModel());
    dividerModel5 = createModel(context, () => DividerModel());
    itemProfileTilesModel9 =
        createModel(context, () => ItemProfileTilesModel());
    itemProfileTilesModel10 =
        createModel(context, () => ItemProfileTilesModel());
    bottomNavigationBarModel =
        createModel(context, () => BottomNavigationBarModel());
  }

  @override
  void dispose() {
    itemProfileTilesModel1.dispose();
    itemProfileTilesModel2.dispose();
    dividerModel1.dispose();
    itemProfileTilesModel3.dispose();
    dividerModel2.dispose();
    itemProfileTilesModel4.dispose();
    itemProfileTilesModel5.dispose();
    dividerModel3.dispose();
    itemProfileTilesModel6.dispose();
    dividerModel4.dispose();
    itemProfileTilesModel7.dispose();
    itemProfileTilesModel8.dispose();
    dividerModel5.dispose();
    itemProfileTilesModel9.dispose();
    itemProfileTilesModel10.dispose();
    bottomNavigationBarModel.dispose();
  }
}
