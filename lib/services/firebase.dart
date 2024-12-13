import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //get collection of notes
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

  //create: add new note
  Future<void> addNote(String note) {
    return notes.add({
      'note': note,
      'timestamp': Timestamp.now(),
    });
  }

  //read: get note from db
  Stream<QuerySnapshot> getNotesStream() {
    final noteStream = notes.orderBy('timestamp', descending: true).snapshots();
    return noteStream;
  }

  //update: update notes given a doc id
  Future<void> updateNotes(String docID, String newNote) {
    return notes.doc(docID).update({
      'note': newNote,
      'timestamp': Timestamp.now(),
    });
  }

  //delete: delete notes given a doc id
  Future<void> deleteNotes(String docID) {
    return notes.doc(docID).delete();
  }
}
