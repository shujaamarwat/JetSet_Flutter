import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DestinationsRecord extends FirestoreRecord {
  DestinationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "destinationPic" field.
  String? _destinationPic;
  String get destinationPic => _destinationPic ?? '';
  bool hasDestinationPic() => _destinationPic != null;

  // "bestTimeToVisit" field.
  String? _bestTimeToVisit;
  String get bestTimeToVisit => _bestTimeToVisit ?? '';
  bool hasBestTimeToVisit() => _bestTimeToVisit != null;

  // "timeZone" field.
  String? _timeZone;
  String get timeZone => _timeZone ?? '';
  bool hasTimeZone() => _timeZone != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "localLanguage" field.
  String? _localLanguage;
  String get localLanguage => _localLanguage ?? '';
  bool hasLocalLanguage() => _localLanguage != null;

  // "weatherInfo" field.
  List<WeatherDataStruct>? _weatherInfo;
  List<WeatherDataStruct> get weatherInfo => _weatherInfo ?? const [];
  bool hasWeatherInfo() => _weatherInfo != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "transportatioInfo" field.
  List<TitleAndDescriptionStruct>? _transportatioInfo;
  List<TitleAndDescriptionStruct> get transportatioInfo =>
      _transportatioInfo ?? const [];
  bool hasTransportatioInfo() => _transportatioInfo != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _destinationPic = snapshotData['destinationPic'] as String?;
    _bestTimeToVisit = snapshotData['bestTimeToVisit'] as String?;
    _timeZone = snapshotData['timeZone'] as String?;
    _currency = snapshotData['currency'] as String?;
    _localLanguage = snapshotData['localLanguage'] as String?;
    _weatherInfo = getStructList(
      snapshotData['weatherInfo'],
      WeatherDataStruct.fromMap,
    );
    _description = snapshotData['description'] as String?;
    _transportatioInfo = getStructList(
      snapshotData['transportatioInfo'],
      TitleAndDescriptionStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('destinations');

  static Stream<DestinationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DestinationsRecord.fromSnapshot(s));

  static Future<DestinationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DestinationsRecord.fromSnapshot(s));

  static DestinationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DestinationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DestinationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DestinationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DestinationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DestinationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDestinationsRecordData({
  String? name,
  String? destinationPic,
  String? bestTimeToVisit,
  String? timeZone,
  String? currency,
  String? localLanguage,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'destinationPic': destinationPic,
      'bestTimeToVisit': bestTimeToVisit,
      'timeZone': timeZone,
      'currency': currency,
      'localLanguage': localLanguage,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class DestinationsRecordDocumentEquality
    implements Equality<DestinationsRecord> {
  const DestinationsRecordDocumentEquality();

  @override
  bool equals(DestinationsRecord? e1, DestinationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.destinationPic == e2?.destinationPic &&
        e1?.bestTimeToVisit == e2?.bestTimeToVisit &&
        e1?.timeZone == e2?.timeZone &&
        e1?.currency == e2?.currency &&
        e1?.localLanguage == e2?.localLanguage &&
        listEquality.equals(e1?.weatherInfo, e2?.weatherInfo) &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.transportatioInfo, e2?.transportatioInfo);
  }

  @override
  int hash(DestinationsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.destinationPic,
        e?.bestTimeToVisit,
        e?.timeZone,
        e?.currency,
        e?.localLanguage,
        e?.weatherInfo,
        e?.description,
        e?.transportatioInfo
      ]);

  @override
  bool isValidKey(Object? o) => o is DestinationsRecord;
}
