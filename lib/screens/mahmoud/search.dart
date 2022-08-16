import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_project/shared/components.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          Column(
            children: [
              stackbuild(context,
                  imageurl:
                      'https://pbs.twimg.com/semantic_core_img/1425852211179843591/E5AjncBq?format=jpg&name=small',
                  headname: 'premier League',
                  time: 'Last Night',
                  event: 'Arsenal VS Tottenham Hotspur',
                  trend: 'Arsenal'),
              trendListbuild(context,
                  trendLocation: 'London',
                  event: 'London Is Red',
                  tweetsnum: 15),
              trendListbuild(context,
                  trendLocation: 'Egypt',
                  event: 'Alahly number 1',
                  tweetsnum: 500),
              trendListbuild(context,
                  trendLocation: 'Business & finance',
                  event: '#daytrading ',
                  tweetsnum: 35)
            ],
          ),
          Column(
            children: [
              stackbuild(context,
                  imageurl:
                      'https://pbs.twimg.com/semantic_core_img/1441710116307292161/iWl7ujBX?format=jpg&name=small',
                  headname: 'News',
                  time: 'Live',
                  event:
                      'New volcano mouth emerges on the Spanish island of La Palma',
                  trend: 'World'),
              trendListbuild(context, trendLocation: 'world',
               event: 'Killing  People',
                tweetsnum: 900
                )
            ],
          ),
          Column(
            children: [
              stackbuild(context,
                  imageurl:
                      'https://pbs.twimg.com/semantic_core_img/1436312704868708355/BpQsk-DW?format=jpg&name=small',
                  headname: 'COVID-19',
                  time: 'Live',
                  event:
                      'COVID-19 vaccines are extremely effective at preventing serious illness and death, trials show',
                  trend: 'World'),
              trendListbuild(context, trendLocation: 'world',
               event: 'COVID-19',
                tweetsnum: 900
                ),
                
            ],
          ),
          Column(
            children: [
              stackbuild(context,
                  imageurl:
                      'https://pbs.twimg.com/semantic_core_img/1441710116307292161/iWl7ujBX?format=jpg&name=small',
                  headname: 'News',
                  time: 'Live',
                  event:
                      'New volcano mouth emerges on the Spanish island of La Palma',
                  trend: 'World'),
              trendListbuild(context, trendLocation: 'world',
               event: 'Killing  People',
                tweetsnum: 900
                ),
                
            ],
          ),
          Column(
            children: [
              stackbuild(context,
                  imageurl:
                      'https://i.guim.co.uk/img/media/9ab0abc48f01d4f03ac2dfec9fb74216d47c12ff/358_140_2877_1726/master/2877.jpg?width=620&quality=85&auto=format&fit=max&s=538059a629c5cc538610b06bbf1da2b2',
                  headname: 'Sports',
                  time: 'Live',
                  event:
                      'Toto Wolff promises ‘really aggressive’ approach to aid Lewis Hamilton title bid',
                  trend: 'World'),
              trendListbuild(context, trendLocation: 'world',
               event: 'Toto Wolff',
                tweetsnum: 500
                ),
                
            ],
          ),
        ],
      ),
    );
  }
}
