import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  var firstController=TextEditingController();
  var secondController=TextEditingController();
  double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleWidget(),
      ),

      body: Container(
        padding: EdgeInsets.only(left: 20.0,right: 20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            firstTF(),
            SizedBox(height: 20.0,),
            secondTF(),
            SizedBox(height: 20.0,),
            buttonBatWidget(),
            SizedBox(height: 20.0,),
            Text("$result",style: TextStyle(
              color: Colors.green,
              fontSize: 30.0
            ),),
          ],
        ),
      ),
    );
  }

        Widget firstTF(){
          return TextField(
            keyboardType: TextInputType.number,
            controller: firstController,
            decoration: InputDecoration(
                labelText: "Enter first number",
                hintText: "Enter number only",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
            ),
          );
        }

  buttonBatWidget(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: _add,
          child: Text("+",style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
        RaisedButton(
          color: Colors.green,
          textColor: Colors.white,
          onPressed: _sub,
          child: Text("-",style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
        RaisedButton(
          color: Colors.purple,
          textColor: Colors.white,
          onPressed: _mul,
          child: Text("X",style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
        RaisedButton(
          color: Colors.orangeAccent,
          textColor: Colors.white,
          onPressed: _div,
          child: Text("/",style: TextStyle(
            fontSize: 20.0,
          ),),
        ),
      ],
    );
  }

  _add(){
  String str1=firstController.text;
  String str2=secondController.text;

  double num1=double.parse(str1);
  double num2=double.parse(str2);

  setState(() {
    result=num1+num2;
  });

  }

_sub(){
  String str1=firstController.text;
  String str2=secondController.text;

  double num1=double.parse(str1);
  double num2=double.parse(str2);

  setState(() {
    result=num1-num2;
  });

}

_mul(){
  String str1=firstController.text;
  String str2=secondController.text;

  double num1=double.parse(str1);
  double num2=double.parse(str2);

  setState(() {
    result=num1*num2;
  });

}

_div(){
  String str1=firstController.text;
  String str2=secondController.text;

  double num1=double.parse(str1);
  double num2=double.parse(str2);

  setState(() {
    result=num1/num2;
  });

}

        Widget secondTF(){
          return TextField(
            keyboardType: TextInputType.number,
            controller: secondController,
            decoration: InputDecoration(
              labelText: "Enter 2nd number",
              hintText: "Enter number only",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              //    prefixIcon: Icon(Icons.lock)
            ),
          );
        }

  Widget titleWidget(){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.add_box),
        Text("Calculator")
      ],);
  }
}
