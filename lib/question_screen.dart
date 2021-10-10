import 'package:ask_us/constants.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<String> guidelinesList = [
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
    'Lorem ipsum dolor sit amet, devolo consectetur adipiscing elit. Lorem ipsum .',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(
                16, MediaQuery.of(context).size.height * 0.05, 16, 0),
            decoration: BoxDecoration(
              color: Color(0xffD66853),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            child: Center(
              child: Text(
                'AskUs a Question',
                textAlign: TextAlign.center,
                style: headerCustom(28, whiteColor, FontWeight.w600),
              ),
            ),
          ),
          buildAskCard(),
          buildGuidlineCard(),
        ],
      ),
    );
  }

  Widget buildAskCard() => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          color: Color(0xffE5E5E5),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey.shade400, width: 1.0),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Color(0xffE5E5E5),
                      child: Image.asset(tempProfilePic),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem Ipsum',
                            style: headerCustom(
                              20,
                              Color.fromRGBO(0, 0, 0, 0.6),
                              FontWeight.w600,
                            ),
                          ),
                          Text(
                            'loremipsumXXXXXX@xyz.com',
                            style: headerCustom(
                              13,
                              Color.fromRGBO(0, 0, 0, 0.6),
                              FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                      top: Radius.circular(10),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'AskUs your question',
                      hintStyle: TextStyle(fontWeight: FontWeight.w500),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildGuidlineCard() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 0),
        child: Card(
          color: secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.grey.shade400, width: 1.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Guidelines:',
                  style: header1(),
                ),
                for (var i in guidelinesList)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Icon(Icons.fiber_manual_record,size: 9,),
                      title: Transform.translate(
                        offset: Offset(-28,0),
                        child: Text(
                           i.toString(),
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                      
                    ),
                  )
              ],
            ),
          ),
        ),
      );
}
