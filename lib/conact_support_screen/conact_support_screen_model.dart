import '/components/back_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'conact_support_screen_widget.dart' show ConactSupportScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ConactSupportScreenModel
    extends FlutterFlowModel<ConactSupportScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for NameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldTextController;
  String? Function(BuildContext, String?)? nameTextFieldTextControllerValidator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for SubjectTextField widget.
  FocusNode? subjectTextFieldFocusNode;
  TextEditingController? subjectTextFieldTextController;
  late MaskTextInputFormatter subjectTextFieldMask;
  String? Function(BuildContext, String?)?
      subjectTextFieldTextControllerValidator;
  // State field(s) for IssueTextField widget.
  FocusNode? issueTextFieldFocusNode;
  TextEditingController? issueTextFieldTextController;
  String? Function(BuildContext, String?)?
      issueTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    nameTextFieldFocusNode?.dispose();
    nameTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    subjectTextFieldFocusNode?.dispose();
    subjectTextFieldTextController?.dispose();

    issueTextFieldFocusNode?.dispose();
    issueTextFieldTextController?.dispose();
  }
}
