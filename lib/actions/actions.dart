import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

/// Get Destinations Query Action Bock
Future<List<DestinationsRecord>?> getDestinations(BuildContext context) async {
  List<DestinationsRecord>? destQueryResult;

  // destinations query
  destQueryResult = await queryDestinationsRecordOnce();
  return destQueryResult;
}

Future<List<GuidesRecord>?> getPopularGuides(BuildContext context) async {
  List<GuidesRecord>? popularGuidesQueryResult;

  popularGuidesQueryResult = await queryGuidesRecordOnce();
  return popularGuidesQueryResult;
}

Future<List<PlacesRecord>?> getPlacesForDestination(
  BuildContext context, {
  required DocumentReference? destinationId,
  bool? onlyCities,
}) async {
  List<PlacesRecord>? placesQueryOnlyCities;
  List<PlacesRecord>? placesQuery;

  if (onlyCities != null) {
    // query with city for destination
    placesQueryOnlyCities = await queryPlacesRecordOnce(
      queryBuilder: (placesRecord) => placesRecord
          .where(
            'destinationId',
            isEqualTo: destinationId,
          )
          .where(
            'isCity',
            isEqualTo: onlyCities,
          ),
    );
    return placesQueryOnlyCities;
  } else {
    // query places for destination
    placesQuery = await queryPlacesRecordOnce(
      queryBuilder: (placesRecord) => placesRecord.where(
        'destinationId',
        isEqualTo: destinationId,
      ),
    );
    return placesQuery;
  }
}

Future<List<GuidesRecord>?> getGuidesForDestination(
  BuildContext context, {
  required DocumentReference? destinationId,
}) async {
  List<GuidesRecord>? queryResultGuidesForDestination;

  // query guides for destination
  queryResultGuidesForDestination = await queryGuidesRecordOnce(
    queryBuilder: (guidesRecord) => guidesRecord.where(
      'destinationId',
      isEqualTo: destinationId,
    ),
  );
  return queryResultGuidesForDestination;
}

Future<List<RestorantsRecord>?> getRestorantsOfDestonations(
  BuildContext context, {
  DocumentReference? destinationId,
}) async {
  List<RestorantsRecord>? restorantsOfDestinationQuery;
  List<RestorantsRecord>? allRestorantsQuery;

  if (destinationId != null) {
    // query destination restorants
    restorantsOfDestinationQuery = await queryRestorantsRecordOnce(
      queryBuilder: (restorantsRecord) => restorantsRecord.where(
        'destinationId',
        isEqualTo: destinationId,
      ),
    );
    return restorantsOfDestinationQuery;
  } else {
    // query all restorants
    allRestorantsQuery = await queryRestorantsRecordOnce();
    return allRestorantsQuery;
  }
}
