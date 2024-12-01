import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note/services/firebase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //firestore
  FirestoreService firestoreService = FirestoreService();
//get text from text field
  TextEditingController textController = TextEditingController();

  //open dialog box to add note
  void openDialogBox() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const TextField(),
              actions: [
                ElevatedButton(
                  onPressed: () => firestoreService.addNote(
                    textController.text,
                  ),
                  child: const Text('Add'),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openDialogBox,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
