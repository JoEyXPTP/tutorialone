import 'package:flutter/material.dart';

void main1(){
  runApp(
    MaterialApp(

    )
  );
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String>names=[];
  var nameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People"),
      ),
      body: Column(

        children:<Widget> [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Enter Name"
            ),
          ),
          RaisedButton(
            onPressed: (){
              String name=nameController.text;
              setState(() {
                names.add(name);
              });
            },
            child: Text("Add"),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (BuildContext context, int index) {

              return Card(
                child: Container(
                  child: Text(names[index],textAlign: TextAlign.center,), 
                  padding: EdgeInsets.all(10.0),
                  color: Colors.red.withOpacity(.5),),
              );

            },itemCount: names.length,),
          )
        ],
      ),
    );
  }
}
