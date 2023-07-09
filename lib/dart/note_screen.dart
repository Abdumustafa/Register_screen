import 'package:flutter/material.dart';
import 'package:fluttercs24/dart/add_screen.dart';

class NotesScreen extends StatefulWidget {
  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<String> notes= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my note",
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToAddScreen();
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {

        return noteItem(index);
      },)   ,
    );

  }

  Widget noteItem(int index){
    return   Container(

      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),

      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Text(
                notes[index]),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.green,
              )),
          IconButton(
              onPressed: () {
                notes.removeAt(index);
                setState(() {

                });
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              )),

        ],
      ),
    );

  }
  void navigateToAddScreen(){
    Navigator.push(context,
      MaterialPageRoute(builder: (context) => NewScreen(),)
    ).then((value)  {
      if (value==null) return;
      notes.add(value);
      setState(() {

      });
    });

  }
}
