import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _currentUserRef =
          prefs.getString('ff_currentUserRef')?.ref ?? _currentUserRef;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _currentUserRef;
  DocumentReference? get currentUserRef => _currentUserRef;
  set currentUserRef(DocumentReference? value) {
    _currentUserRef = value;
    value != null
        ? prefs.setString('ff_currentUserRef', value.path)
        : prefs.remove('ff_currentUserRef');
  }

  List<PlanTypeStruct> _plans = [
    PlanTypeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"YEARLY\",\"subtitle\":\"\$79.99/year (\$6.67/month)\",\"saving\":\"60% Savings\"}')),
    PlanTypeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"MONTHLY\",\"subtitle\":\"\$11.99/month\",\"saving\":\"\"}'))
  ];
  List<PlanTypeStruct> get plans => _plans;
  set plans(List<PlanTypeStruct> value) {
    _plans = value;
  }

  void addToPlans(PlanTypeStruct value) {
    plans.add(value);
  }

  void removeFromPlans(PlanTypeStruct value) {
    plans.remove(value);
  }

  void removeAtIndexFromPlans(int index) {
    plans.removeAt(index);
  }

  void updatePlansAtIndex(
    int index,
    PlanTypeStruct Function(PlanTypeStruct) updateFn,
  ) {
    plans[index] = updateFn(_plans[index]);
  }

  void insertAtIndexInPlans(int index, PlanTypeStruct value) {
    plans.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
