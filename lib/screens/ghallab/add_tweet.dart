import 'package:flutter/material.dart';
import 'package:twitter_project/shared/components.dart';
class AddTweet extends StatefulWidget {
  const AddTweet({ Key? key }) : super(key: key);

  @override
  _AddTweetState createState() => _AddTweetState();
}

class _AddTweetState extends State<AddTweet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close, color: Colors.black, size: 40,)),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.circular(30)
                  ),
                 height: 37,
                  width: 90,
                  child: TextButton(
                    onPressed: (){},
                   child: Text(
                     'Tweet',
                     style: TextStyle(
                       fontSize: 17,
                       color: Colors.white
                     ),
                   ),
                   ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://scontent.fcai21-2.fna.fbcdn.net/v/t1.18169-9/20375723_1313062305458021_7653193095307577083_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=b-lhZZ134nwAX-ezvMF&_nc_ht=scontent.fcai21-2.fna&oh=884d41affe1796b56b8cb2a05034d73b&oe=617744B5'),
                ),
                SizedBox(width: 3,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 5),
                        child: TextFormField(
                          maxLines: 10,
                          autofocus: true,
                          style: TextStyle(
                            fontSize: 20
                          ),
                          decoration: InputDecoration(
                            hintText:  'What\'s happening',
                            
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}