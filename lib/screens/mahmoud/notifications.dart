import 'package:flutter/material.dart';
import 'package:twitter_project/shared/components.dart';
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({ Key? key }) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: notificationscardbuild(
          imageurl: 'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.18169-9/20375723_1313062305458021_7653193095307577083_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=b-lhZZ134nwAX-ezvMF&_nc_ht=scontent.fcai21-2.fna&oh=884d41affe1796b56b8cb2a05034d73b&oe=617744B5',
           tweetcontent: 'mahmoud',
            username: 'mahmoud ',
             emailaddress: 'mahmoud',
             replyingto: 'mohamed',
              timeago: '5',
               context: context),
    );
  }
}