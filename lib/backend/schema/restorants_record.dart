import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestorantsRecord extends FirestoreRecord {
  RestorantsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "destinationId" field.
  DocumentReference? _destinationId;
  DocumentReference? get destinationId => _destinationId;
  bool hasDestinationId() => _destinationId != null;

  // "restorantPic" field.
  String? _restorantPic;
  String get restorantPic => _restorantPic ?? '';
  bool hasRestorantPic() => _restorantPic != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "reviews" field.
  int? _reviews;
  int get reviews => _reviews ?? 0;
  bool hasReviews() => _reviews != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "minPrice" field.
  double? _minPrice;
  double get minPrice => _minPrice ?? 0.0;
  bool hasMinPrice() => _minPrice != null;

  // "cuisines" field.
  List<String>? _cuisines;
  List<String> get cuisines => _cuisines ?? const [];
  bool hasCuisines() => _cuisines != null;

  // "serving" field.
  List<String>? _serving;
  List<String> get serving => _serving ?? const [];
  bool hasServing() => _serving != null;

  // "features" field.
  List<String>? _features;
  List<String> get features => _features ?? const [];
  bool hasFeatures() => _features != null;

  // "isFavourite" field.
  bool? _isFavourite;
  bool get isFavourite => _isFavourite ?? false;
  bool hasIsFavourite() => _isFavourite != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _destinationId = snapshotData['destinationId'] as DocumentReference?;
    _restorantPic = snapshotData['restorantPic'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _reviews = castToType<int>(snapshotData['reviews']);
    _location = snapshotData['location'] as String?;
    _minPrice = castToType<double>(snapshotData['minPrice']);
    _cuisines = getDataList(snapshotData['cuisines']);
    _serving = getDataList(snapshotData['serving']);
    _features = getDataList(snapshotData['features']);
    _isFavourite = snapshotData['isFavourite'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restorants');

  static Stream<RestorantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestorantsRecord.fromSnapshot(s));

  static Future<RestorantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestorantsRecord.fromSnapshot(s));

  static RestorantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestorantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestorantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestorantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestorantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestorantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestorantsRecordData({
  String? name,
  DocumentReference? destinationId,
  String? restorantPic,
  double? rating,
  int? reviews,
  String? location,
  double? minPrice,
  bool? isFavourite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'destinationId': destinationId,
      'restorantPic': restorantPic,
      'rating': rating,
      'reviews': reviews,
      'location': location,
      'minPrice': minPrice,
      'isFavourite': isFavourite,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestorantsRecordDocumentEquality implements Equality<RestorantsRecord> {
  const RestorantsRecordDocumentEquality();

  @override
  bool equals(RestorantsRecord? e1, RestorantsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.destinationId == e2?.destinationId &&
        e1?.restorantPic == e2?.restorantPic &&
        e1?.rating == e2?.rating &&
        e1?.reviews == e2?.reviews &&
        e1?.location == e2?.location &&
        e1?.minPrice == e2?.minPrice &&
        listEquality.equals(e1?.cuisines, e2?.cuisines) &&
        listEquality.equals(e1?.serving, e2?.serving) &&
        listEquality.equals(e1?.features, e2?.features) &&
        e1?.isFavourite == e2?.isFavourite;
  }

  @override
  int hash(RestorantsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.destinationId,
        e?.restorantPic,
        e?.rating,
        e?.reviews,
        e?.location,
        e?.minPrice,
        e?.cuisines,
        e?.serving,
        e?.features,
        e?.isFavourite
      ]);

  @override
  bool isValidKey(Object? o) => o is RestorantsRecord;
}
