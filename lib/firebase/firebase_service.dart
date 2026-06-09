import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addStudent({
    required String name,
    required String dietType,
  }) async {
    await firestore.collection('students').add({
      'name': name,
      'dietType': dietType,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> deleteStudent(String id) async {
    await firestore.collection('students').doc(id).delete();
  }

  Future<void> updateStudent({
    required String id,
    required String name,
    required String dietType,
  }) async {
    await firestore.collection('students').doc(id).update({
      'name': name,
      'dietType': dietType,
    });
  }
}
