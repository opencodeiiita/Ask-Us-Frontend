import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Color(0xffD66853),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(50),right: Radius.circular(50)),
                        ),
                        fillColor: Colors.white,
                        labelText: "Search",
                        filled: true,
                      ),
                    ),
                  ),
                  Icon(CupertinoIcons.bell_fill)
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Flexible(child: ListView(
              children: List.generate(list.length, (index) =>
                  question(index),
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}

Widget question(int index){
  return Container(
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black, width: 0.3)
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //SizedBox(width: 50,),
              Flexible(
                child: Text(list[index].question,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(child: Image.asset(list[index].image),),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(list[index].name,style: TextStyle(fontWeight: FontWeight.w700),),
                    Text(list[index].email),
                  ],
                )
              ],
            ),
          ),
          Row(children:[
            Flexible(child:
            Text(list[index].description,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            )
            )
          ]
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(CupertinoIcons.up_arrow),
                    Text(list[index].upvote),
                    SizedBox(width: 10,),
                    Icon(CupertinoIcons.chat_bubble_fill),
                    Text(list[index].chat),
                  ],
                ),
              ),
              Icon(CupertinoIcons.bookmark_fill)
            ],
          ),
        ],
      ),
    ),
  );
}