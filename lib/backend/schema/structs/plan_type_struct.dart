// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlanTypeStruct extends FFFirebaseStruct {
  PlanTypeStruct({
    String? title,
    String? subtitle,
    String? saving,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _subtitle = subtitle,
        _saving = saving,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  // "saving" field.
  String? _saving;
  String get saving => _saving ?? '';
  set saving(String? val) => _saving = val;

  bool hasSaving() => _saving != null;

  static PlanTypeStruct fromMap(Map<String, dynamic> data) => PlanTypeStruct(
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        saving: data['saving'] as String?,
      );

  static PlanTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlanTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'subtitle': _subtitle,
        'saving': _saving,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'saving': serializeParam(
          _saving,
          ParamType.String,
        ),
      }.withoutNulls;

  static PlanTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlanTypeStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        saving: deserializeParam(
          data['saving'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PlanTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlanTypeStruct &&
        title == other.title &&
        subtitle == other.subtitle &&
        saving == other.saving;
  }

  @override
  int get hashCode => const ListEquality().hash([title, subtitle, saving]);
}

PlanTypeStruct createPlanTypeStruct({
  String? title,
  String? subtitle,
  String? saving,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlanTypeStruct(
      title: title,
      subtitle: subtitle,
      saving: saving,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlanTypeStruct? updatePlanTypeStruct(
  PlanTypeStruct? planType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    planType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlanTypeStructData(
  Map<String, dynamic> firestoreData,
  PlanTypeStruct? planType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (planType == null) {
    return;
  }
  if (planType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && planType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final planTypeData = getPlanTypeFirestoreData(planType, forFieldValue);
  final nestedData = planTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = planType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlanTypeFirestoreData(
  PlanTypeStruct? planType, [
  bool forFieldValue = false,
]) {
  if (planType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(planType.toMap());

  // Add any Firestore field values
  planType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlanTypeListFirestoreData(
  List<PlanTypeStruct>? planTypes,
) =>
    planTypes?.map((e) => getPlanTypeFirestoreData(e, true)).toList() ?? [];
