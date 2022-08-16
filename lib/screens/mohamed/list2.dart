import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ListPage2 extends StatefulWidget {
  const ListPage2({Key? key}) : super(key: key);

  @override
  State<ListPage2> createState() => _ListPage2State();
}

class _ListPage2State extends State<ListPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lists you're on",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            Text(
              '@mhamedhussein52',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 14,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Nothing to see here -- yet.',
          style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
