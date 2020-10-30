
import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: LoginApp(),
  debugShowCheckedModeBanner: false,
));


class LoginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1439853949127-fa647821eba0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                  fit: BoxFit.fill
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue,Colors.purpleAccent],
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Login',style: TextStyle(
                  fontSize: 30.0,
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0, vertical:12),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: 'User Email',
                        contentPadding: EdgeInsets.all(8.0),
                        prefixIcon: Icon(Icons.email,color: Colors.blue,)
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: 'User Password',
                        contentPadding: EdgeInsets.all(8.0),
                        prefixIcon: Icon(Icons.lock,color: Colors.blue,)
                    ),
                    obscureText: true,
                  ),
                ),
                Text("Forget your password ?", style: TextStyle(color: Colors.white),),
                SizedBox(
                  height: 40.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  shape: StadiumBorder(),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  child: Text("Login",style: TextStyle(fontSize: 22.0),),
                  padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 80.0),
                  elevation: 0.0,

                )
              ],
            ),
          )
        ],
      ),
    );
  }

}