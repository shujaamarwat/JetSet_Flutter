import '/components/back_button_widget.dart';
import '/components/item_notificaiton_setting_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'notification_setting_screen_widget.dart'
    show NotificationSettingScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationSettingScreenModel
    extends FlutterFlowModel<NotificationSettingScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel1;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel2;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel3;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel4;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel5;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel6;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel7;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel8;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel9;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel10;
  // Model for ItemNotificaitonSetting component.
  late ItemNotificaitonSettingModel itemNotificaitonSettingModel11;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    itemNotificaitonSettingModel1 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel2 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel3 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel4 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel5 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel6 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel7 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel8 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel9 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel10 =
        createModel(context, () => ItemNotificaitonSettingModel());
    itemNotificaitonSettingModel11 =
        createModel(context, () => ItemNotificaitonSettingModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    itemNotificaitonSettingModel1.dispose();
    itemNotificaitonSettingModel2.dispose();
    itemNotificaitonSettingModel3.dispose();
    itemNotificaitonSettingModel4.dispose();
    itemNotificaitonSettingModel5.dispose();
    itemNotificaitonSettingModel6.dispose();
    itemNotificaitonSettingModel7.dispose();
    itemNotificaitonSettingModel8.dispose();
    itemNotificaitonSettingModel9.dispose();
    itemNotificaitonSettingModel10.dispose();
    itemNotificaitonSettingModel11.dispose();
  }
}
