import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List names=['Jonathan Juario', 'Maria Corazon Juario','Jozua Cyd Juario'];

  int countLetters(names){
    int counting = names.length;
    return counting;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.message),
          title: Text("ListView Builder"),
        ),
        body: ListView(
          children:[
            for(String name in names)
              ListTile(
                leading:Icon(Icons.lock),
                title: Text(name),
                subtitle:Text(countLetters(name).toString()+' '+"letters"),
              )
          ],
        ),
      ),
    );
  }
}

