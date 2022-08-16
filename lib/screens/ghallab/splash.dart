import 'dart:async';

import 'package:flutter/material.dart';
import 'package:twitter_project/screens/ghallab/login.dart';
import 'package:twitter_project/screens/mahmoud/master_layout.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        seconds: 3
      ),
     (){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return const LoginScreen();}));
     }
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: const Center(
        child: Image(image: AssetImage('images/logo.png',), height: 100, width: 100,),
      ),
    );
  }
}