import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Weight",
                hintText: "in lbs",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Enter Height(feet)",
                  hintText: "in lbs",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Enter Height(inches)",
                  hintText: "in lbs",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              onPressed: (){

              },
              child: Text("Calculate BMI"),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
