import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {


  var _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[800],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("House Plants",style: TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold
                  )),
                  SizedBox(height: 20.0),
                  TextFormField(
                    onSaved: (str){
                      print(str);

                    },
                    validator: (str){
                      if(str!.isEmpty){
                        return"required";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "First Name"
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      onSaved: (str){
                        print(str);

                      },
                      validator: (str){
                        if(str!.isEmpty){
                          return"required";
                        }
                      },
                      decoration: InputDecoration(
                      hintText: "Last Name"
                  )),
                  SizedBox(height: 20.0),
                  TextFormField(
                      onSaved: (str){
                        print(str);

                      },
                      validator: (str){
                        if(str!.isEmpty){
                          return"required";
                        }
                        
                        if(!str.endsWith("@gmail.com")){
                          return"invalid gmail";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Email"
                      )
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      onSaved: (str){
                        print(str);

                      },
                      validator: (str){
                        if(str!.isEmpty){
                          return"required";
                        }

                        if(str.length<5){
                          return"at least 5 letters";
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password"
                      )
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.green,
                      textColor: Colors.white,
                    onPressed: (){

                        if(_formKey.currentState!.validate()){
                          _formKey.currentState!.save();
                        }


                    },
                    child: Text("Register"),
                  ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      textColor: Colors.blue,
                      onPressed: (){
                        Navigator.of(context).pop();

                      }, child: Text("Sign in here"),
                    ),
                  )
                ],

              ),
            ))
          ],
        ),
      ),
    );
  }
}
