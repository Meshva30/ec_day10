import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.menu),
          title: Text('Map'),
          centerTitle: true,

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              mybox('Exit',Icon(Icons.exit_to_app)),
              mybox('Play',Icon(Icons.play_arrow)),
              mybox('Pause',Icon(Icons.pause)),
              mybox('Stop',Icon(Icons.stop)),
              mybox('Close',Icon(Icons.close)),
              mybox('Delete',Icon(Icons.delete)),
              mybox('Email',Icon(Icons.email)),

            ],
          ),
        ),
      ),
    );
  }
}

Widget mybox(String name,Icon i1) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 90,
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.white
    ),
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$name'),
          i1,
        ],
      ),
    ),
  );
}