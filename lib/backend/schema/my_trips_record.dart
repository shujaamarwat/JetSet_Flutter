import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyTripsRecord extends FirestoreRecord {
  MyTripsRecord._(
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
      FirebaseFirestore.instance.collection('myTrips');

  static Stream<MyTripsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyTripsRecord.fromSnapshot(s));

  static Future<MyTripsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyTripsRecord.fromSnapshot(s));

  static MyTripsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyTripsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyTripsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyTripsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyTripsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyTripsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyTripsRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyTripsRecordDocumentEquality implements Equality<MyTripsRecord> {
  const MyTripsRecordDocumentEquality();

  @override
  bool equals(MyTripsRecord? e1, MyTripsRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(MyTripsRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is MyTripsRecord;
}
