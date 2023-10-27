import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'database.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: db.collection("notes").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  color: Colors.amber,
                  child: Column(
                    children: [
                      Text(snapshot.data!.docs[index]['title']),
                      const SizedBox(height: 10),
                      Text(snapshot.data!.docs[index]['note']),
                      const SizedBox(height: 10),
                      IconButton(
                        onPressed: () {
                          Database.deleteData(snapshot.data!.docs[index].id);
                        },
                        icon: Icon(Icons.deblur),
                      ),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No Data"));
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.deepOrange,
              ),
            );
          }
        },
      ),
    );
  }
}

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController titleController = TextEditingController();

  TextEditingController memoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(
                hintText: "Enter title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: memoController,
            maxLines: 7,
            minLines: 1,
            decoration: InputDecoration(
                hintText: "Enter memo",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                minimumSize: MaterialStateProperty.all(
                    const Size(double.infinity, 50.0))),
            onPressed: () {
              Database.addData(titleController.text, memoController.text);
              Navigator.pop(context);
            },
            child: const Text(
              "Add",
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
