import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TripMatesRecord extends FirestoreRecord {
  TripMatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tripMates');

  static Stream<TripMatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TripMatesRecord.fromSnapshot(s));

  static Future<TripMatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TripMatesRecord.fromSnapshot(s));

  static TripMatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TripMatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TripMatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TripMatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TripMatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TripMatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTripMatesRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class TripMatesRecordDocumentEquality implements Equality<TripMatesRecord> {
  const TripMatesRecordDocumentEquality();

  @override
  bool equals(TripMatesRecord? e1, TripMatesRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(TripMatesRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is TripMatesRecord;
}
