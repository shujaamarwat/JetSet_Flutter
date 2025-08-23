// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TitleAndDescriptionStruct extends FFFirebaseStruct {
  TitleAndDescriptionStruct({
    String? title,
    String? description,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static TitleAndDescriptionStruct fromMap(Map<String, dynamic> data) =>
      TitleAndDescriptionStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
      );

  static TitleAndDescriptionStruct? maybeFromMap(dynamic data) => data is Map
      ? TitleAndDescriptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static TitleAndDescriptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TitleAndDescriptionStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TitleAndDescriptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TitleAndDescriptionStruct &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([title, description]);
}

TitleAndDescriptionStruct createTitleAndDescriptionStruct({
  String? title,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TitleAndDescriptionStruct(
      title: title,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TitleAndDescriptionStruct? updateTitleAndDescriptionStruct(
  TitleAndDescriptionStruct? titleAndDescription, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    titleAndDescription
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTitleAndDescriptionStructData(
  Map<String, dynamic> firestoreData,
  TitleAndDescriptionStruct? titleAndDescription,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (titleAndDescription == null) {
    return;
  }
  if (titleAndDescription.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && titleAndDescription.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final titleAndDescriptionData =
      getTitleAndDescriptionFirestoreData(titleAndDescription, forFieldValue);
  final nestedData =
      titleAndDescriptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      titleAndDescription.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTitleAndDescriptionFirestoreData(
  TitleAndDescriptionStruct? titleAndDescription, [
  bool forFieldValue = false,
]) {
  if (titleAndDescription == null) {
    return {};
  }
  final firestoreData = mapToFirestore(titleAndDescription.toMap());

  // Add any Firestore field values
  titleAndDescription.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTitleAndDescriptionListFirestoreData(
  List<TitleAndDescriptionStruct>? titleAndDescriptions,
) =>
    titleAndDescriptions
        ?.map((e) => getTitleAndDescriptionFirestoreData(e, true))
        .toList() ??
    [];
