

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitter_project/screens/ghallab/add_tweet.dart';
import 'package:twitter_project/screens/mahmoud/home.dart';
import 'package:twitter_project/screens/mahmoud/message.dart';
import 'package:twitter_project/screens/mahmoud/notifications.dart';
import 'package:twitter_project/screens/mahmoud/search.dart';
import 'package:twitter_project/shared/components.dart';

class MasterLayout extends StatefulWidget {
  const MasterLayout({Key? key}) : super(key: key);

  @override
  _MasterLayoutState createState() => _MasterLayoutState();
}

class _MasterLayoutState extends State<MasterLayout> {
  @override
  void initState() {
    super.initState();
    Duration(
      seconds: 2
    );
  }
  var scaffoldkey =GlobalKey<ScaffoldState>();
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    NotificationsScreen(),
    MessageScreen()
  ];
  List<Widget> titles = [
    Image(
      image: NetworkImage(
          'https://miro.medium.com/max/1024/1*d741kjfzNQv6W_d5wd37HA.png'),
      height: 60,
      width: 60,
    ),
    appbarsearchformfield(),
    Text(
      'Notificaions',
    ),
    Text(
      'Message',
    )
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsetsDirectional.only(start: 5),
            child: IconButton(
              onPressed: (){
                scaffoldkey.currentState!.openDrawer();
            }, icon: Icon(
              Icons.account_circle,
              color: Colors.grey,
              size: 50,
            ),)
          ),
          title: titles[currentIndex],
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 5),
              child: IconButton(
                icon: Icon(Icons.settings_outlined),
                onPressed: () {},
              ),
            )
          ],
          bottom: currentIndex==1?TabBar(
              labelColor: Colors.blue,
              labelStyle: TextStyle(
                fontSize: 16,
              ),
              isScrollable: true,
              unselectedLabelColor: Colors.grey.shade700,
              physics: BouncingScrollPhysics(),
              tabs: [
                Tab(text: 'For you'),
                Tab(text: 'Trending'),
                Tab(text: 'COVID-19'),
                Tab(text: 'News'),
                Tab(text: 'Sports'),
              ],
            ):null ,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'notifications'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mark_email_unread_outlined), label: 'message'),
            ]),
        floatingActionButton: currentIndex == 3
            ? FloatingActionButton(
                backgroundColor: Colors.blue.shade400,
                onPressed: () {
                },
                child: const Icon(
                  Icons.add_comment_outlined,
                  size: 30,
                ),
              )
            : FloatingActionButton(
                backgroundColor: Colors.blue.shade400,
                onPressed: () {
                  navigatTo(context, const AddTweet());
                },
                child: const Icon(
                  Icons.edit,
                  size: 30,
                ),
              ),
        body: screens[currentIndex],
        drawer: Drawer(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage('https://scontent.fcai21-2.fna.fbcdn.net/v/t1.18169-9/20375723_1313062305458021_7653193095307577083_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=b-lhZZ134nwAX-ezvMF&_nc_ht=scontent.fcai21-2.fna&oh=884d41affe1796b56b8cb2a05034d73b&oe=617744B5'),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Mahmoud',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      '@mahmoud.gmail.com',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Text(
                          '193',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 2,),
                        Text(
                      'following',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      ),
                      SizedBox(width: 5,),
                       Text(
                          '94',
                          style:TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 2,),
                        Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    ],),
                    SizedBox(height: 20,),
                    myDivider(context),
                    SizedBox(height: 10,),
                    drawerItem(title:'profile', icon: Icons.person_outline),
                    drawerItem(title: 'Lists', icon: Icons.text_snippet_outlined),
                    drawerItem(title: 'Bookmarks', icon: Icons.bookmark_outline),
                   
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          'Settings and Privacy',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          'Help Center',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    )
    
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
