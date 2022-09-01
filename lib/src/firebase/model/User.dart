import "./base/FirestoreDocument.dart";

//abstract class UserInfo implements FirebaseAuth.User {
class UserInfo extends FirestoreDocument {
  String? email;
  String? displayName;
  String? emailVerified;
  String? isAnonymous;
  String? metadata;
  String? phoneNumber;
  String? photoURL;
  String? providerData;
  String? refreshToken;
  String? tenantId;
  String? uid;
  dynamic /* String | null */ userName;
  dynamic /* String | null */ firstName;
  dynamic /* String | null */ lastName;
  dynamic /* String | null */ dob;
  dynamic /* String | null */ nic;
  String? userRoleId;

  UserInfo.fromSnapshot(Map<String, dynamic> snapshot, [String? id])
      : email = snapshot['email'],
        displayName = snapshot['displayName'],
        photoURL = snapshot['photoURL'],
        uid = snapshot['uid'],
        super.fromSnapshot(snapshot, id!);
}
