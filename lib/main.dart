import'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text("Sport"),

      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [

            Expanded(
              flex: 1,
              child: Center(child: Text("iFit Coach",style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),)),
            ),


            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Text("TODAY'S PLAN",style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Text("DASHBOARD",style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.only(left: 20.0),
                child: Text("ACTIVITY",style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  letterSpacing: 3.0

                ),),
                color: Colors.blue,
                alignment: Alignment.centerLeft,
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.only(left: 20.0),
                child: Text("WORKOUT",style: TextStyle(
                  color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 3.0
                ),),
                color: Colors.deepOrangeAccent,
                alignment: Alignment.centerLeft,
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.only(left: 20.0),
                child: Text("NUTRITION",style: TextStyle(
                  color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 3.0
                ),),
                color: Colors.green,
                alignment: Alignment.centerLeft,
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.only(left: 20.0),
                child: Text("SLEEP",style: TextStyle(
                  color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 3.0
                ),),
                color: Colors.amberAccent,
                alignment: Alignment.centerLeft,
              ),
            ),


          ],
        ),

      ),)
  );
}