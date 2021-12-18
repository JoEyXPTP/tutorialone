import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {

 // List<String>imgList=["img/Avenger.jpg","img/Tom1.jpg","img/Tom2.jpg","img/Tom3.jpg","img/Tom4.jpg"];

  List<Heros>heros=[
    Heros("Avenger","img/Avenger.jpg"),
    Heros("Tom and Jerry","img/Tom1.jpg"),
    Heros("Tom and Jerry","img/Tom2.jpg"),
    Heros("Tom and Jerry","img/Tom3.jpg"),
    Heros("Tom and Jerry","img/Tom4.jpg"),
  ];
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Lesson"),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            children: [
              Image.asset(heros[index].img),
              Text(heros[index].name)
            ],
          ),
        );
        
      },itemCount: heros.length,),
    );
  }
}

class Heros{
  String name;
  String img;
  
  Heros(this.name,this.img);
}

