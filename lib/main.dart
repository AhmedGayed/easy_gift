import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ActionPage/action_page.dart';
import 'Home/screen/home.dart';
import 'Login/screen/login3.dart';
import 'Login/screen/login.dart';
import 'actionn_page/actionn_page.dart';
import 'any/any.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
         statusBarIconBrightness: Brightness.light,
         statusBarColor: Colors.blue
       ));
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dev School',
        theme: ThemeData(
          fontFamily: 'Cairo',
          primarySwatch: Colors.blue,
        ),
        home: loginn()
    );
  }

}