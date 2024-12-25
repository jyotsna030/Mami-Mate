import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalsRecord extends FirestoreRecord {
  HospitalsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "otp" field.
  int? _otp;
  int get otp => _otp ?? 0;
  bool hasOtp() => _otp != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
    _otp = castToType<int>(snapshotData['otp']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Hospitals');

  static Stream<HospitalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HospitalsRecord.fromSnapshot(s));

  static Future<HospitalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HospitalsRecord.fromSnapshot(s));

  static HospitalsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HospitalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HospitalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HospitalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HospitalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HospitalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHospitalsRecordData({
  String? displayName,
  int? phoneNumber,
  int? otp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'phone_number': phoneNumber,
      'otp': otp,
    }.withoutNulls,
  );

  return firestoreData;
}

class HospitalsRecordDocumentEquality implements Equality<HospitalsRecord> {
  const HospitalsRecordDocumentEquality();

  @override
  bool equals(HospitalsRecord? e1, HospitalsRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.otp == e2?.otp;
  }

  @override
  int hash(HospitalsRecord? e) =>
      const ListEquality().hash([e?.displayName, e?.phoneNumber, e?.otp]);

  @override
  bool isValidKey(Object? o) => o is HospitalsRecord;
}
