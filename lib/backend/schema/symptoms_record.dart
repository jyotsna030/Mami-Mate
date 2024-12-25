import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SymptomsRecord extends FirestoreRecord {
  SymptomsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "isChecked" field.
  bool? _isChecked;
  bool get isChecked => _isChecked ?? false;
  bool hasIsChecked() => _isChecked != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _isChecked = snapshotData['isChecked'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('symptoms');

  static Stream<SymptomsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SymptomsRecord.fromSnapshot(s));

  static Future<SymptomsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SymptomsRecord.fromSnapshot(s));

  static SymptomsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SymptomsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SymptomsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SymptomsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SymptomsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SymptomsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSymptomsRecordData({
  String? name,
  bool? isChecked,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'isChecked': isChecked,
    }.withoutNulls,
  );

  return firestoreData;
}

class SymptomsRecordDocumentEquality implements Equality<SymptomsRecord> {
  const SymptomsRecordDocumentEquality();

  @override
  bool equals(SymptomsRecord? e1, SymptomsRecord? e2) {
    return e1?.name == e2?.name && e1?.isChecked == e2?.isChecked;
  }

  @override
  int hash(SymptomsRecord? e) =>
      const ListEquality().hash([e?.name, e?.isChecked]);

  @override
  bool isValidKey(Object? o) => o is SymptomsRecord;
}
