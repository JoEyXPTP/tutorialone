import 'package:flutter/material.dart';
import 'package:my_first_project/PlayerAppSolution/home_page.dart';

void main(){
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    )
  );
}