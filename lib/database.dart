import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

class Database {
  static Future<void> addData(String title, String note) async {
    await db
        .collection("notes")
        .add({'title': title, 'note': note})
        .whenComplete(() => null)
        .catchError((e) {
          print('$e');
        });
  }

  static Future<void> deleteData(String id) async {
    await db.collection("notes").doc(id).delete();
  }

  static Future<void> updateData(String id, String title, String note) async {
    await db.collection("notes").doc(id).update({'title': title, 'note': note});
  }
}
