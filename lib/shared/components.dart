import 'package:flutter/material.dart';

Widget appbarsearchformfield() {
  return TextFormField(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(Icons.search),
        fillColor: Colors.grey.shade50,
        filled: true,
        hintText: 'Search Twitter',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        )),
  );
}

Widget mycircleAvatar({required String imageurl}) {
  return CircleAvatar(
    radius: 35,
    backgroundImage: NetworkImage(imageurl),
  );
}

Widget myDivider(context) {
  return Container(
    height: 1,
    color: Colors.grey.shade400,
    width: MediaQuery.of(context).size.width,
  );
}

Widget tweetbuild({
  required String imageurl,
  required String tweetcontent,
  required String username,
  required String emailaddress,
  required String timeago,
  required BuildContext context,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mycircleAvatar(imageurl: imageurl),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        username,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '@$emailaddress',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Colors.grey,
                      ),
                      Text(
                        timeago,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.more_horiz_outlined,
                      )
                    ],
                  ),
                  Text(
                    tweetcontent,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.mode_comment_outlined,
                          size: 20,
                        ),
                        Icon(
                          Icons.repeat_rounded,
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite_outline_sharp,
                          size: 20,
                        ),
                        Icon(
                          Icons.share,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      myDivider(context)
    ],
  );
}

Widget notificationscardbuild({
  required String imageurl,
  required String tweetcontent,
  required String username,
  required String emailaddress,
  required String replyingto,
  required String timeago,
  required BuildContext context,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mycircleAvatar(imageurl: imageurl),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        username,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '@$emailaddress',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Colors.grey,
                      ),
                      Text(
                        timeago,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.more_horiz_outlined,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'replying to ',
                      ),
                      Text(
                        '@$replyingto',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      )
                    ],
                  ),
                  Text(
                    tweetcontent,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.mode_comment_outlined,
                          size: 20,
                        ),
                        Icon(
                          Icons.repeat_rounded,
                          size: 20,
                        ),
                        Icon(
                          Icons.favorite_outline_sharp,
                          size: 20,
                        ),
                        Icon(
                          Icons.share,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      myDivider(context)
    ],
  );
}

Widget messagebuild({
  required String imageurl,
  required String tweetcontent,
  required String username,
  required String emailaddress,
  required String timeago,
  required BuildContext context,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mycircleAvatar(imageurl: imageurl),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        username,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '@$emailaddress',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        radius: 2,
                        backgroundColor: Colors.grey,
                      ),
                      Text(
                        timeago,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.more_horiz_outlined,
                      )
                    ],
                  ),
                  Text(
                    tweetcontent,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      myDivider(context)
    ],
  );
}

void navigatTo(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

Widget drawerItem({
  required String title,
  required IconData icon,
}) {
  return ListTile(
    contentPadding: EdgeInsets.all(0),
    leading: Icon(
      icon,
      size: 35,
      color: Colors.black,
    ),
    title: Text(
      title,
      style: TextStyle(
        fontSize: 20,
      ),
    ),
  );
}

Widget stackbuild(context,{
  required String imageurl,
  required String headname,
  required String time,
  required String event,
  required String trend,
}) {
  return Stack(
    children: [
      Image(
        image: NetworkImage(imageurl),
        height: MediaQuery.of(context).size.height / 3.7,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 15,
        ),
        child: Container(
          height: MediaQuery.of(context).size.height / 3.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    headname,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.white,
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                event,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Trending With $trend',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      )
    ],
  );
}

Widget trendListbuild(context,{
  required String trendLocation,
  required String event,
  required int tweetsnum,
}){
  return  Column(
                children: [
                  SizedBox(height: 2,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Trending in $trendLocation',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            SizedBox(height: 3,),
                            Text(
                              event,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 3,),
                            Text(
                              '$tweetsnum k Tweets',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                  ),
                    myDivider(context),
                ],
              );
}