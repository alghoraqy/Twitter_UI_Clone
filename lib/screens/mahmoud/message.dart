import 'package:flutter/material.dart';
import 'package:twitter_project/shared/components.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: messagebuild(
          imageurl:
              'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.18169-9/20375723_1313062305458021_7653193095307577083_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=b-lhZZ134nwAX-ezvMF&_nc_ht=scontent.fcai21-2.fna&oh=884d41affe1796b56b8cb2a05034d73b&oe=617744B5',
          tweetcontent:
              'hi mahmoud hi mahmoudhi mahmoudhi mahmoudhi mahmoudhi mahmoud',
          username: 'mahmoud',
          emailaddress: 'mahmoud',
          timeago: '5h',
          context: context),
    );
  }
}
