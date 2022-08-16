import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_project/screens/mahmoud/master_layout.dart';
import 'package:twitter_project/shared/components.dart';

class Login2screen extends StatefulWidget {
  const Login2screen({Key? key}) : super(key: key);

  @override
  _Login2screenState createState() => _Login2screenState();
}

class _Login2screenState extends State<Login2screen> {
  var formkey =GlobalKey<FormState>();
  bool secure =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              size: 35,
              color: Colors.blue.shade400,
            )),
        title: const Image(
          image: NetworkImage(
              'https://miro.medium.com/max/1024/1*d741kjfzNQv6W_d5wd37HA.png'),
          height: 50,
          width: 50,
        ),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'To get started, first enter your phone, email, or @username',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5,),
                  TextFormField(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'This field must not be empty';
                      } else{
                        return null ;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Phone, email, or username'
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/13,),
                  const Text(
                    'Enter your Password',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5,),
                  TextFormField(
                    validator: (value){
                      if (value!.isEmpty) {
                        return 'This field must not be empty';
                      } else{
                        return null ;
                      }
                    },
                    obscureText: secure,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            secure = !secure;
                          });
                        }, icon: secure ? Icon(Icons.visibility_rounded) :Icon(Icons.visibility_off_rounded)
                        )
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  myDivider(context),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                           border: Border.all(
                             color: Colors.black
                           )
                          ),
                          child: TextButton(
                            onPressed: (){},
                            child:const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ) ,),
                        )
                       , Expanded(child: SizedBox()),
                        Container(
                          width: MediaQuery.of(context).size.width/5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(23)
                          ),
                          child: TextButton(
                            onPressed: (){
                              formkey.currentState!.validate() ? Navigator.push(context, MaterialPageRoute(builder: (context){return MasterLayout() ;})): null;
                            },
                           child: const Text(
                             'Log In',
                             style: TextStyle(
                               fontSize: 17,
                               fontWeight: FontWeight.bold,
                               color: Colors.white
                             ),
                           )
                           ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
