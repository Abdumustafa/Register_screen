import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  final notecontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(" Add note") ,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            children: [
              TextFormField(
                controller: notecontroller,
                decoration: InputDecoration(
                  labelText: "note",
                  border: OutlineInputBorder()
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  addNote();

                }, child: Text("Add")),
              ),



            ]
        ),
      ),

    );
  }
  void addNote(){
    String note =notecontroller.text;
    Navigator.pop(context,note);
  }
}
