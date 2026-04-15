import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../models/user_model.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  User? get currentUser => FirebaseAuth.instance.currentUser;

  
  Future<void> addTask(String title, String desc, UserModel user) async {
    if (currentUser == null) throw Exception("User not logged in");

    await _db.collection('tasks').add({
      'title': title,
      'description': desc,

     
      'user': user.toMap(),

      'status': 'pending',

      'createdAt': Timestamp.now(),
      'updatedAt': Timestamp.now(),
    });
  }


  Stream<QuerySnapshot> getTasks(String filter) {
    var query = _db.collection('tasks');

    if (filter != 'all') {
      query = query.where('status', isEqualTo: filter);
    }

    return query.snapshots();
  }

 
  Future<void> updateTask(String id, String title, String desc) async {
    await _db.collection('tasks').doc(id).update({
      'title': title,
      'description': desc,
      'updatedAt': Timestamp.now(),
    });
  }


  Future<void> updateStatus(String id, String status) async {
    await _db.collection('tasks').doc(id).update({
      'status': status,
      'updatedAt': Timestamp.now(),
    });
  }

 
  Future<void> deleteTask(String id) async {
    await _db.collection('tasks').doc(id).delete();
  }
}