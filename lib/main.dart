import 'package:flutter/material.dart';
import 'package:signup_page/landingPage.dart';
import 'package:signup_page/signIn.dart';
import 'package:signup_page/signUp2.dart';
import 'package:signup_page/signupPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SignUp",
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        //backgroundColor: #1e1d2b
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home:
      //signUp2(),
      //SignUp1(),
      //SIgnIn(),
      landing(),
    );
  }
}



