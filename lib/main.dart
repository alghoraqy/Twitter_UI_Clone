import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:twitter_project/screens/ghallab/add_tweet.dart';
import 'package:twitter_project/screens/ghallab/login.dart';
import 'package:twitter_project/screens/ghallab/login2.dart';
import 'package:twitter_project/screens/ghallab/splash.dart';
import 'package:twitter_project/screens/mahmoud/master_layout.dart';
import 'package:twitter_project/screens/mahmoud/search.dart';
 void main(List<String> args) {
   runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
   const MyApp({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       theme: ThemeData(
         scaffoldBackgroundColor: Colors.white,
         textTheme: const TextTheme(
           headline1: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.bold,
             color: Colors.black
           ),
           headline2: TextStyle(
             color: Colors.grey,
             fontSize: 16,
           ),
           headline3: TextStyle(
            fontSize: 18,
            color: Colors.black
           ),
         ),
         appBarTheme: AppBarTheme(
           titleTextStyle: TextStyle(
             color: Colors.black,
             fontSize: 30,
             fontWeight: FontWeight.bold
           ),
           elevation: 0,
           color: Colors.white,
           centerTitle: true,
           actionsIconTheme: IconThemeData(
             color: Colors.blue.shade400,
             size:35
           ),
           
           systemOverlayStyle: SystemUiOverlayStyle(
             statusBarColor: Colors.white,
             statusBarIconBrightness: Brightness.dark
           )
         ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue.shade400,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          unselectedIconTheme: IconThemeData(size: 30),
          selectedIconTheme: IconThemeData(size: 30)
        )
       ),
       debugShowCheckedModeBanner: false,
       home: const SplashScreen() ,
     );
   }
 }