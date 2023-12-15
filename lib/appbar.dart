import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: Home()
    );
  }

}


class Home extends StatelessWidget{
  myFun(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("My App"),
        backgroundColor: Colors.amber,
        toolbarHeight: 60,
        shadowColor: Colors.black12,
        elevation: 10,
        toolbarOpacity: 1,
        actions: [
          IconButton(onPressed: (){myFun("Hello", context);}, icon: Icon(Icons.home))
        ],



      ),
    );
  }

}