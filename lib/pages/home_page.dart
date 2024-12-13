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
  void openDialogBox({String? docID}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextField(
                controller: textController,
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    if (docID == null) {
                      firestoreService.addNote(
                        textController.text,
                      );
                    } else {
                      firestoreService.updateNotes(docID, textController.text);
                    }

                    //clear text controller
                    textController.clear();

                    //close box
                    Navigator.pop(context);
                  },
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
      body: StreamBuilder<QuerySnapshot>(
          stream: firestoreService.getNotesStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              //check if snapshot has data

              List notesList = snapshot.data!.docs;

              //return data as list
              return ListView.builder(
                  itemCount: notesList.length,
                  itemBuilder: (context, index) {
                    //get the individual doc
                    DocumentSnapshot document = notesList[index];
                    String docID = document.id;

                    //get each note from doc
                    Map<String, dynamic> data =
                        document.data() as Map<String, dynamic>;
                    String noteText = data['note'];

                    //display as a list tile
                    return ListTile(
                      title: Text(noteText),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //update button
                          IconButton(
                            onPressed: () => openDialogBox(docID: docID),
                            icon: const Icon(Icons.update),
                          ),
                          //delete button
                          IconButton(
                            onPressed: () =>
                                firestoreService.deleteNotes(docID),
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return const Center(
                child: Text('No Notes'),
              );
            }
          }),
    );
  }
}
