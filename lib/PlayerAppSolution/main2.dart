import 'package:flutter/material.dart';
import 'package:my_first_project/home_page.dart';

void main2(){
  runApp(
    MaterialApp(
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    )
  );
}