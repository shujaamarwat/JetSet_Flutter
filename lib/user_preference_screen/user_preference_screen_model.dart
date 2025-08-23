import '/components/back_button_widget.dart';
import '/components/radio_tile_group_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'user_preference_screen_widget.dart' show UserPreferenceScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserPreferenceScreenModel
    extends FlutterFlowModel<UserPreferenceScreenWidget> {
  ///  Local state fields for this page.

  List<String> dates = ['MM/DD', 'DD/MM'];
  void addToDates(String item) => dates.add(item);
  void removeFromDates(String item) => dates.remove(item);
  void removeAtIndexFromDates(int index) => dates.removeAt(index);
  void insertAtIndexInDates(int index, String item) =>
      dates.insert(index, item);
  void updateDatesAtIndex(int index, Function(String) updateFn) =>
      dates[index] = updateFn(dates[index]);

  List<String> distances = ['Miles', 'Kilometeres'];
  void addToDistances(String item) => distances.add(item);
  void removeFromDistances(String item) => distances.remove(item);
  void removeAtIndexFromDistances(int index) => distances.removeAt(index);
  void insertAtIndexInDistances(int index, String item) =>
      distances.insert(index, item);
  void updateDistancesAtIndex(int index, Function(String) updateFn) =>
      distances[index] = updateFn(distances[index]);

  List<String> times = ['12 hour', '24 hour'];
  void addToTimes(String item) => times.add(item);
  void removeFromTimes(String item) => times.remove(item);
  void removeAtIndexFromTimes(int index) => times.removeAt(index);
  void insertAtIndexInTimes(int index, String item) =>
      times.insert(index, item);
  void updateTimesAtIndex(int index, Function(String) updateFn) =>
      times[index] = updateFn(times[index]);

  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for RadioTileGroup component.
  late RadioTileGroupModel radioTileGroupModel1;
  // Model for RadioTileGroup component.
  late RadioTileGroupModel radioTileGroupModel2;
  // Model for RadioTileGroup component.
  late RadioTileGroupModel radioTileGroupModel3;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    radioTileGroupModel1 = createModel(context, () => RadioTileGroupModel());
    radioTileGroupModel2 = createModel(context, () => RadioTileGroupModel());
    radioTileGroupModel3 = createModel(context, () => RadioTileGroupModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    radioTileGroupModel1.dispose();
    radioTileGroupModel2.dispose();
    radioTileGroupModel3.dispose();
  }
}
