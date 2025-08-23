import '/auth/firebase_auth/auth_util.dart';
import '/components/back_button_widget.dart';
import '/components/item_profile_tiles_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'profile_screen_widget.dart' show ProfileScreenWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ProfileScreenModel extends FlutterFlowModel<ProfileScreenWidget> {
  ///  Local state fields for this page.

  int? wqq;

  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  late MaskTextInputFormatter textFieldMask3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel1;
  // Model for ItemProfileTiles component.
  late ItemProfileTilesModel itemProfileTilesModel2;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    itemProfileTilesModel1 =
        createModel(context, () => ItemProfileTilesModel());
    itemProfileTilesModel2 =
        createModel(context, () => ItemProfileTilesModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    itemProfileTilesModel1.dispose();
    itemProfileTilesModel2.dispose();
  }
}
