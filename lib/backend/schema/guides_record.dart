import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GuidesRecord extends FirestoreRecord {
  GuidesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "authorPic" field.
  String? _authorPic;
  String get authorPic => _authorPic ?? '';
  bool hasAuthorPic() => _authorPic != null;

  // "destinationId" field.
  DocumentReference? _destinationId;
  DocumentReference? get destinationId => _destinationId;
  bool hasDestinationId() => _destinationId != null;

  // "guidePic" field.
  String? _guidePic;
  String get guidePic => _guidePic ?? '';
  bool hasGuidePic() => _guidePic != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  bool hasViews() => _views != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "informationList" field.
  List<TitleAndDescriptionStruct>? _informationList;
  List<TitleAndDescriptionStruct> get informationList =>
      _informationList ?? const [];
  bool hasInformationList() => _informationList != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _author = snapshotData['author'] as String?;
    _authorPic = snapshotData['authorPic'] as String?;
    _destinationId = snapshotData['destinationId'] as DocumentReference?;
    _guidePic = snapshotData['guidePic'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _views = castToType<int>(snapshotData['views']);
    _likes = castToType<int>(snapshotData['likes']);
    _informationList = getStructList(
      snapshotData['informationList'],
      TitleAndDescriptionStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('guides');

  static Stream<GuidesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GuidesRecord.fromSnapshot(s));

  static Future<GuidesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GuidesRecord.fromSnapshot(s));

  static GuidesRecord fromSnapshot(DocumentSnapshot snapshot) => GuidesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GuidesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GuidesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GuidesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GuidesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGuidesRecordData({
  String? name,
  String? author,
  String? authorPic,
  DocumentReference? destinationId,
  String? guidePic,
  DateTime? date,
  int? views,
  int? likes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'author': author,
      'authorPic': authorPic,
      'destinationId': destinationId,
      'guidePic': guidePic,
      'date': date,
      'views': views,
      'likes': likes,
    }.withoutNulls,
  );

  return firestoreData;
}

class GuidesRecordDocumentEquality implements Equality<GuidesRecord> {
  const GuidesRecordDocumentEquality();

  @override
  bool equals(GuidesRecord? e1, GuidesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.author == e2?.author &&
        e1?.authorPic == e2?.authorPic &&
        e1?.destinationId == e2?.destinationId &&
        e1?.guidePic == e2?.guidePic &&
        e1?.date == e2?.date &&
        e1?.views == e2?.views &&
        e1?.likes == e2?.likes &&
        listEquality.equals(e1?.informationList, e2?.informationList);
  }

  @override
  int hash(GuidesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.author,
        e?.authorPic,
        e?.destinationId,
        e?.guidePic,
        e?.date,
        e?.views,
        e?.likes,
        e?.informationList
      ]);

  @override
  bool isValidKey(Object? o) => o is GuidesRecord;
}
