import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagesRecord extends FirestoreRecord {
  ImagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "destinationId" field.
  DocumentReference? _destinationId;
  DocumentReference? get destinationId => _destinationId;
  bool hasDestinationId() => _destinationId != null;

  // "pictureUrl" field.
  String? _pictureUrl;
  String get pictureUrl => _pictureUrl ?? '';
  bool hasPictureUrl() => _pictureUrl != null;

  void _initializeFields() {
    _destinationId = snapshotData['destinationId'] as DocumentReference?;
    _pictureUrl = snapshotData['pictureUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('images');

  static Stream<ImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagesRecord.fromSnapshot(s));

  static Future<ImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagesRecord.fromSnapshot(s));

  static ImagesRecord fromSnapshot(DocumentSnapshot snapshot) => ImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagesRecordData({
  DocumentReference? destinationId,
  String? pictureUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'destinationId': destinationId,
      'pictureUrl': pictureUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImagesRecordDocumentEquality implements Equality<ImagesRecord> {
  const ImagesRecordDocumentEquality();

  @override
  bool equals(ImagesRecord? e1, ImagesRecord? e2) {
    return e1?.destinationId == e2?.destinationId &&
        e1?.pictureUrl == e2?.pictureUrl;
  }

  @override
  int hash(ImagesRecord? e) =>
      const ListEquality().hash([e?.destinationId, e?.pictureUrl]);

  @override
  bool isValidKey(Object? o) => o is ImagesRecord;
}
