import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/service/firestore.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final FirestoreService fs = FirestoreService();
final TextEditingController _nameController = TextEditingController();
final TextEditingController _addressController = TextEditingController();
final TextEditingController _ageController = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Firebase!!!", style: TextStyle(color: Colors.black)),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => openNoteBox(null), child: const Icon(Icons.add)),
        body: StreamBuilder<QuerySnapshot>(
          stream: fs.getNotes(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List noteList = snapshot.data!.docs;
              return ListView.builder(
                itemCount: noteList.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot document = noteList[index];
                  String docId = document.id;

                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  String noteText = data['note'];
                  String noteTimeStamp = data['timestamp'].toString();

                  return ListTile(
                    title: Text(noteText),
                    subtitle: Text(noteTimeStamp),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => openNoteBox(docId),
                          icon: Icon(Icons.settings),
                        ),
                        IconButton(
                            onPressed: () => fs.deleteNote(docId),
                            icon: Icon(Icons.delete))
                      ],
                    ),
                  );
                },
              );
            } else {
              return const Text("No Data Found!!!!");
            }
          },
        ));
  }

  void openNoteBox(String? docId) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Column(children: [
                TextField(
                  controller: _nameController,
                ),
                TextField(
                  controller: _addressController,
                ),
                TextField(
                  controller: _ageController,
                ),
              ]),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      if (docId == null) {
                        fs.addNote(_nameController.text,
                            _addressController.text, _ageController.text);
                      } else {
                        fs.updateNote(docId, _nameController.text);
                      }
                      _nameController.clear();
                      Navigator.pop(context);
                    },
                    child: const Text("Add"))
              ],
            ));
  }
}
