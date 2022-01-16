import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_project/fluttter_app_tuto1/technology_news.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(primarySwatch: Colors.red),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String baseUrl =
      "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.voanews.com%2Fapi%2Fzyritequir";

  Future<List<Items>> getNews() async {
    return await http.get(Uri.parse(baseUrl)).then((res) {
      TechnologyNews tn =
          TechnologyNews.fromJson(json.decode(res.body.toString()));
      return tn.items;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: FutureBuilder(
        future: getNews(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Items> items = snapshot.data;
            return ListView(
              children: items.map((i) {
                return Text(i.title!);
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
