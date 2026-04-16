import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../features/auth/data/models/user_model.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;

  Future<void> register(String name, String email, String password) async {
    final res = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    final user = res.user!;

    final userModel = UserModel((b) => b
      ..uid = user.uid
      ..name = name
      ..email = email
      ..createdAt = DateTime.now());

    await _db.collection('users').doc(user.uid).set(userModel.toJson());
  }

  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> logout() async => _auth.signOut();

  User? get currentUser => _auth.currentUser;
}