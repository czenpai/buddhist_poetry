import 'package:cloud_firestore/cloud_firestore.dart';

import "./base/FirestoreDocument.dart";

//abstract class UserInfo implements FirebaseAuth.User {
class Volume extends FirestoreDocument {
  dynamic poems;
  int? volume_id;
  Timestamp? timestamp;

  Volume.fromSnapshot(Map<String, dynamic> snapshot, [String? id])
      : poems = snapshot['poems'],
        volume_id = snapshot['volume_id'],
        timestamp = snapshot['timestamp'],
        super.fromSnapshot(snapshot, id!);
}
