import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List names=['Jonathan Juario', 'Maria Corazon Juario','Jozua Cyd Juario'];

  MyApp({super.key});

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
          leading: const Icon(Icons.message),
          title: const Text("ListView Builder"),
        ),
        body: ListView.builder(
          itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title:Text(names[index]),
                    leading:const Icon(Icons.lock),
                    subtitle:Text(countLetters(names[index]).toString()+' '+"letters"),
                  );
                }
              )
        ),
      );

  }
}

