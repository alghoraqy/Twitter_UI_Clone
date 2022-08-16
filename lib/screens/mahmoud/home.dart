import 'package:flutter/material.dart';
import 'package:twitter_project/shared/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          tweetbuild(
              imageurl:
                  'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.18169-9/20375723_1313062305458021_7653193095307577083_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=b-lhZZ134nwAX-ezvMF&_nc_ht=scontent.fcai21-2.fna&oh=884d41affe1796b56b8cb2a05034d73b&oe=617744B5',
              tweetcontent: 'hi  how are u',
              username: 'mahmoud',
              emailaddress: 'mahmoud',
              timeago: '3h',
              context: context),
          tweetbuild(
              imageurl: 'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.18169-9/20375723_1313062305458021_7653193095307577083_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=b-lhZZ134nwAX-ezvMF&_nc_ht=scontent.fcai21-2.fna&oh=884d41affe1796b56b8cb2a05034d73b&oe=617744B5',
              tweetcontent: 'seconde tweet seconde tweet seconde tweet seconde tweet seconde tweet ',
              username: 'mohamed',
              emailaddress: 'mohammde ',
              timeago: '5h',
              context: context)
        ],
      ),
    );
  }
}
