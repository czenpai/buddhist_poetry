import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'package:buddhist_poetry/src/services/auth.dart';
import 'package:buddhist_poetry/src/services/models.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Reads all documments from the topics collection
  Future<List<Volume>> getVolumes() async {
    var ref = _db.collection('volumes');
    var snapshot = await ref.get();
    var data = snapshot.docs.map((s) => s.data());
    var volumes = data.map((d) => Volume.fromJson(d));
    return volumes.toList();
  }

  // /// Retrieves a single quiz document
  // Future<Quiz> getQuiz(String quizId) async {
  //   var ref = _db.collection('quizzes').doc(quizId);
  //   var snapshot = await ref.get();
  //   return Quiz.fromJson(snapshot.data() ?? {});
  // }

  // /// Listens to current user's report document in Firestore
  // Stream<Report> streamReport() {
  //   return AuthService().userStream.switchMap((user) {
  //     if (user != null) {
  //       var ref = _db.collection('reports').doc(user.uid);
  //       return ref.snapshots().map((doc) => Report.fromJson(doc.data()!));
  //     } else {
  //       return Stream.fromIterable([Report()]);
  //     }
  //   });
  // }

  // /// Updates the current user's report document after completing quiz
  // Future<void> updateUserReport(Quiz quiz) {
  //   var user = AuthService().user!;
  //   var ref = _db.collection('reports').doc(user.uid);

  //   var data = {
  //     'total': FieldValue.increment(1),
  //     'topics': {
  //       quiz.topic: FieldValue.arrayUnion([quiz.id])
  //     }
  //   };

  //   return ref.set(data, SetOptions(merge: true));
  // }

}
