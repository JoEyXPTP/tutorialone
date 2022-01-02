import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String baseUrl="https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.voanews.com%2Fapi%2Fzyritequir";
  Future<String> getNews()async{

    return await http.get(Uri.parse(baseUrl)).then((res) {
      print(res.body.toString());
      return res.body;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center(
        child: RaisedButton(onPressed: (){



        },
    child: Text("Get Data"),),
      ),
    );
  }
}
