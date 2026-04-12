import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  User? get user => FirebaseAuth.instance.currentUser;

  Future<void> addTask(String title, String desc) async {
    if (user == null) throw Exception("User not logged in");

    await _db.collection('tasks').add({
      'title': title,
      'description': desc,
      'userId': user!.uid,
      'createdAt': Timestamp.now(),
      'status': 'pending',
    });
  }

  Stream<QuerySnapshot> getTasks(String filter) {
    if (user == null) throw Exception("User not logged in");

    var query =
        _db.collection('tasks').where('userId', isEqualTo: user!.uid);

    if (filter != 'all') {
      query = query.where('status', isEqualTo: filter);
    }

    return query.snapshots();
  }

  Future<void> updateTask(String id, String title, String desc) async {
    await _db.collection('tasks').doc(id).update({
      'title': title,
      'description': desc,
    });
  }

  Future<void> updateStatus(String id, String status) async {
    await _db.collection('tasks').doc(id).update({'status': status});
  }

  Future<void> deleteTask(String id) async {
    await _db.collection('tasks').doc(id).delete();
  }
}