// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeatherDataStruct extends FFFirebaseStruct {
  WeatherDataStruct({
    Quarter? quarter,
    int? maxTemp,
    int? minTemp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quarter = quarter,
        _maxTemp = maxTemp,
        _minTemp = minTemp,
        super(firestoreUtilData);

  // "quarter" field.
  Quarter? _quarter;
  Quarter? get quarter => _quarter;
  set quarter(Quarter? val) => _quarter = val;

  bool hasQuarter() => _quarter != null;

  // "maxTemp" field.
  int? _maxTemp;
  int get maxTemp => _maxTemp ?? 0;
  set maxTemp(int? val) => _maxTemp = val;

  void incrementMaxTemp(int amount) => maxTemp = maxTemp + amount;

  bool hasMaxTemp() => _maxTemp != null;

  // "minTemp" field.
  int? _minTemp;
  int get minTemp => _minTemp ?? 0;
  set minTemp(int? val) => _minTemp = val;

  void incrementMinTemp(int amount) => minTemp = minTemp + amount;

  bool hasMinTemp() => _minTemp != null;

  static WeatherDataStruct fromMap(Map<String, dynamic> data) =>
      WeatherDataStruct(
        quarter: data['quarter'] is Quarter
            ? data['quarter']
            : deserializeEnum<Quarter>(data['quarter']),
        maxTemp: castToType<int>(data['maxTemp']),
        minTemp: castToType<int>(data['minTemp']),
      );

  static WeatherDataStruct? maybeFromMap(dynamic data) => data is Map
      ? WeatherDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'quarter': _quarter?.serialize(),
        'maxTemp': _maxTemp,
        'minTemp': _minTemp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quarter': serializeParam(
          _quarter,
          ParamType.Enum,
        ),
        'maxTemp': serializeParam(
          _maxTemp,
          ParamType.int,
        ),
        'minTemp': serializeParam(
          _minTemp,
          ParamType.int,
        ),
      }.withoutNulls;

  static WeatherDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      WeatherDataStruct(
        quarter: deserializeParam<Quarter>(
          data['quarter'],
          ParamType.Enum,
          false,
        ),
        maxTemp: deserializeParam(
          data['maxTemp'],
          ParamType.int,
          false,
        ),
        minTemp: deserializeParam(
          data['minTemp'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WeatherDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WeatherDataStruct &&
        quarter == other.quarter &&
        maxTemp == other.maxTemp &&
        minTemp == other.minTemp;
  }

  @override
  int get hashCode => const ListEquality().hash([quarter, maxTemp, minTemp]);
}

WeatherDataStruct createWeatherDataStruct({
  Quarter? quarter,
  int? maxTemp,
  int? minTemp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WeatherDataStruct(
      quarter: quarter,
      maxTemp: maxTemp,
      minTemp: minTemp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

WeatherDataStruct? updateWeatherDataStruct(
  WeatherDataStruct? weatherData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    weatherData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addWeatherDataStructData(
  Map<String, dynamic> firestoreData,
  WeatherDataStruct? weatherData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (weatherData == null) {
    return;
  }
  if (weatherData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && weatherData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final weatherDataData =
      getWeatherDataFirestoreData(weatherData, forFieldValue);
  final nestedData =
      weatherDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = weatherData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getWeatherDataFirestoreData(
  WeatherDataStruct? weatherData, [
  bool forFieldValue = false,
]) {
  if (weatherData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(weatherData.toMap());

  // Add any Firestore field values
  weatherData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWeatherDataListFirestoreData(
  List<WeatherDataStruct>? weatherDatas,
) =>
    weatherDatas?.map((e) => getWeatherDataFirestoreData(e, true)).toList() ??
    [];
