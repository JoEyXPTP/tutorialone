import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder:(context){
                return ();
              }
            ));
          })
        ],

      ),
    );

  }
}
