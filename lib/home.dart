
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool bookmarkUpdate(outline) {

    setState(() {
      outline = !outline;
    });
    return outline;
  }

  int upvoteIncrement(vote) {
    setState(() {
      vote++;
    });
    return vote;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25))),
            centerTitle: true,
            backgroundColor: Color(0xffD66853),
            title: Padding(
              padding: const EdgeInsets.all(2.0),
              // padding: const EdgeInsets.fromLTRB(2.0, 5.0, 2.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Flexible(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(CupertinoIcons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50),
                                right: Radius.circular(50)),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
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
            Flexible(
                child: ListView(
              children: List.generate(
                list.length,
                (index) => question(index),
              ),
            ))
          ],
        ),
       // bottomNavigationBar: BottomNavigationBarWidget(),
      ),
    );
  }

  Widget question(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.black, width: 0.3)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //SizedBox(width: 50,),
                Flexible(
                  child: Text(
                    list[index].question,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.asset(list[index].image),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list[index].name,
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(list[index].email),
                    ],
                  )
                ],
              ),
            ),
            Row(children: [
              Flexible(
                  child: Text(
                list[index].description,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ))
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_upward_outlined),
                          onPressed: () {
                            list[index].upvote = upvoteIncrement(list[index].upvote);
                          }),
                      Text("${list[index].upvote}"),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          icon: Icon(Icons.chat_bubble_rounded),
                          onPressed: () {
                            //chat button added
                          }),
                      Text(list[index].chat),
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(list[index].bookmark
                        ? Icons.bookmark_outline
                        : Icons.bookmark),
                    onPressed: () {
                      list[index].bookmark =
                          bookmarkUpdate(list[index].bookmark);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  String name, email, question, description, image, chat;
  int upvote;
  bool bookmark;
  Question(
      {required this.name,
      required this.email,
      required this.description,
      required this.question,
      required this.image,
      required this.chat,
      required this.upvote,
      required this.bookmark});
}

List<Question> list = [
  Question(
      name: "Gautam",
      email: "darkknight131714@gmail.com",
      description: "My Question is Practice",
      question: "I want to know how this works??????????????????????????",
      image: "assets/images/img.png",
      chat: "3",
      upvote: 0,
      bookmark: false),
  Question(
      name: "Gautam",
      email: "darkknight131714@gmail.com",
      description: "My Question is Practice",
      question: "I want to know how this works?",
      image: "assets/images/img.png",
      chat: "3",
      upvote: 0,
      bookmark: false),
  Question(
      name: "Gautam",
      email: "darkknight131714@gmail.com",
      description: "My Question is Practice",
      question: "I want to know how this works?",
      image: "assets/images/img.png",
      chat: "3",
      upvote: 0,
      bookmark: false),
  Question(
      name: "Gautam",
      email: "darkknight131714@gmail.com",
      description: "My Question is Practice",
      question: "I want to know how this works?",
      image: "assets/images/img.png",
      chat: "3",
      upvote: 0,
      bookmark: false),
  Question(
      name: "Gautam",
      email: "darkknight131714@gmail.com",
      description: "My Question is Practice",
      question: "I want to know how this works?",
      image: "assets/images/img.png",
      chat: "3",
      upvote: 0,
      bookmark: false),
  Question(
      name: "Gautam",
      email: "darkknight131714@gmail.com",
      description: "My Question is Practice",
      question: "I want to know how this works?",
      image: "assets/images/img.png",
      chat: "3",
      upvote: 0,
      bookmark: false),
  Question(
      name: "Gautam",
      email: "darkknight131714@gmail.com",
      description: "My Question is Practice",
      question: "I want to know how this works?",
      image: "assets/images/img.png",
      chat: "3",
      upvote: 0,
      bookmark: false),
  Question(
      name: "Gautam",
      email: "darkknight131714@gmail.com",
      description: "My Question is Practice",
      question: "I want to know how this works?",
      image: "assets/images/img.png",
      chat: "3",
      upvote: 0,
      bookmark: false),
];
