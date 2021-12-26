import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(
    MaterialApp(
      home: HomePage(),
    )
  );
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  getData()async{
    await http.get(uri).then((response){
      // print(response.statusCode);
      // print(response.body);
    List<dynamic>list1=json.decode(response.body);
    print(list1.length);
    List<Map<String,dynamic>>list2=[];
    list1.forEach((listData) {
      Map<String,dynamic>map={
        "userID":listData["userID"],
        "id":listData["id"],
        "title":listData['title'],
        "body":listData['body']
      };
      list2.add(map);

    });
    print(list2.length.toString()+"list2");
    setState(() {
      print(list2);
      print("test");
      list=list2;

    });

    });
  }


  List<Map<String,dynamic>>list=[];

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: list.length==0?Center(
        child: CircularProgressIndicator(),
      ): ListView(
        children: list.map((listData){
          return Card(
            child: ListTile(
              title: Text(listData["title"]),
              subtitle: Text(listData["body"]),
              leading: Text(listData["userId"].toString()),
            ),
          );
          return Text("Hello");
        }).toList(),


      ),
    );
  }
}


