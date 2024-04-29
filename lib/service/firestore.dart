import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection
  final CollectionReference notes =
      FirebaseFirestore.instance.collection("notes");

  // create
  Future<void> addNote(String node, String address, String age) {
    return notes.add({
      'note': node,
      'address': address,
      'age': age,
      'timestamp': Timestamp.now()
    });
  }

  // read
  Stream<QuerySnapshot> getNotes() {
    final noteStream = notes.orderBy('timestamp', descending: true).snapshots();
    return noteStream;
  }

  // update
  Future<void> updateNote(String docId, String newNode) {
    return notes
        .doc(docId)
        .update({'note': newNode, 'timestamp': Timestamp.now()});
  }

  // delete
  Future<void> deleteNote(String docId) {
    return notes.doc(docId).delete();
  }
}
