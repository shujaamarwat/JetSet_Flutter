import '/components/handler_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'new_trip_bottom_sheet_widget.dart' show NewTripBottomSheetWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewTripBottomSheetModel
    extends FlutterFlowModel<NewTripBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Handler component.
  late HandlerModel handlerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    handlerModel = createModel(context, () => HandlerModel());
  }

  @override
  void dispose() {
    handlerModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
