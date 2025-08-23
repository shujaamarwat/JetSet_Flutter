import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlacesRecord extends FirestoreRecord {
  PlacesRecord._(
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

  // "attractionPic" field.
  String? _attractionPic;
  String get attractionPic => _attractionPic ?? '';
  bool hasAttractionPic() => _attractionPic != null;

  // "isFavourited" field.
  bool? _isFavourited;
  bool get isFavourited => _isFavourited ?? false;
  bool hasIsFavourited() => _isFavourited != null;

  // "isCity" field.
  bool? _isCity;
  bool get isCity => _isCity ?? false;
  bool hasIsCity() => _isCity != null;

  // "cityName" field.
  String? _cityName;
  String get cityName => _cityName ?? '';
  bool hasCityName() => _cityName != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "reviews" field.
  int? _reviews;
  int get reviews => _reviews ?? 0;
  bool hasReviews() => _reviews != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _destinationId = snapshotData['destinationId'] as DocumentReference?;
    _attractionPic = snapshotData['attractionPic'] as String?;
    _isFavourited = snapshotData['isFavourited'] as bool?;
    _isCity = snapshotData['isCity'] as bool?;
    _cityName = snapshotData['cityName'] as String?;
    _website = snapshotData['website'] as String?;
    _phone = snapshotData['phone'] as String?;
    _time = snapshotData['time'] as String?;
    _address = snapshotData['address'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _reviews = castToType<int>(snapshotData['reviews']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('places');

  static Stream<PlacesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlacesRecord.fromSnapshot(s));

  static Future<PlacesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlacesRecord.fromSnapshot(s));

  static PlacesRecord fromSnapshot(DocumentSnapshot snapshot) => PlacesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlacesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlacesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlacesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlacesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlacesRecordData({
  String? name,
  DocumentReference? destinationId,
  String? attractionPic,
  bool? isFavourited,
  bool? isCity,
  String? cityName,
  String? website,
  String? phone,
  String? time,
  String? address,
  double? rating,
  int? reviews,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'destinationId': destinationId,
      'attractionPic': attractionPic,
      'isFavourited': isFavourited,
      'isCity': isCity,
      'cityName': cityName,
      'website': website,
      'phone': phone,
      'time': time,
      'address': address,
      'rating': rating,
      'reviews': reviews,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlacesRecordDocumentEquality implements Equality<PlacesRecord> {
  const PlacesRecordDocumentEquality();

  @override
  bool equals(PlacesRecord? e1, PlacesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.destinationId == e2?.destinationId &&
        e1?.attractionPic == e2?.attractionPic &&
        e1?.isFavourited == e2?.isFavourited &&
        e1?.isCity == e2?.isCity &&
        e1?.cityName == e2?.cityName &&
        e1?.website == e2?.website &&
        e1?.phone == e2?.phone &&
        e1?.time == e2?.time &&
        e1?.address == e2?.address &&
        e1?.rating == e2?.rating &&
        e1?.reviews == e2?.reviews;
  }

  @override
  int hash(PlacesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.destinationId,
        e?.attractionPic,
        e?.isFavourited,
        e?.isCity,
        e?.cityName,
        e?.website,
        e?.phone,
        e?.time,
        e?.address,
        e?.rating,
        e?.reviews
      ]);

  @override
  bool isValidKey(Object? o) => o is PlacesRecord;
}
