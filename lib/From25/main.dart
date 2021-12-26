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

 final String url="https://jsonplaceholder.typicode.com/posts";

  final uri = new uri.parse(your_url);
  getData()async{
    await http.get(url).then((response){
      print(response.statusCode);
      print(response.body);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(

      ),
    );
  }
}