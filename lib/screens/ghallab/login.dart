import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitter_project/screens/ghallab/login2.dart';
import 'package:twitter_project/shared/components.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'See What\'s happening in the world right now.',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade400,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      height: 45,
                      width: MediaQuery.of(context).size.width/1.3,
                      child: TextButton(
                        onPressed: (){},
                       child: const Text(
                         'Create account',
                         style:TextStyle(
                           fontSize: 16,
                           color: Colors.white
                         ),
                       )),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Have an account already?',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            navigatTo(context, const Login2screen());
                          },
                           child: Text(
                             'Log In',
                             style: TextStyle(
                               fontSize: 17,
                               color: Colors.blue.shade400
                             ),
                           )
                           ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}