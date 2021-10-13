import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key? key}) : super(key: key);

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
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
        //   child: AppBar(
        //     shape: RoundedRectangleBorder(
        //         borderRadius:
        //         BorderRadius.vertical(bottom: Radius.circular(25))),
        //     centerTitle: true,
        //     backgroundColor: Color(0xffD66853),
        //     title: Padding(
        //       //padding: const EdgeInsets.all(2),
        //        padding: const EdgeInsets.fromLTRB(2.0, 50.0, 2.0, 0.0),
        //       child: Row(
        //         crossAxisAlignment: CrossAxisAlignment.end,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Flexible(
        //             child: Container(
        //               alignment: Alignment.topCenter,
        //               height: 80,
        //               child: TextField(
        //                 decoration: InputDecoration(
        //                   prefixIcon: Icon(CupertinoIcons.search),
        //                   border: OutlineInputBorder(
        //                     borderRadius: BorderRadius.horizontal(
        //                         left: Radius.circular(50),
        //                         right: Radius.circular(50)),
        //                   ),
        //                   fillColor: Colors.white,
        //                   filled: true,
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Icon(CupertinoIcons.bell_fill)
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        backgroundColor: Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //    height: MediaQuery.of(context).size.height * 0.15,
              //    padding: EdgeInsets.fromLTRB(
              //        1, MediaQuery.of(context).size.height * 0.05, 16, 0),
              //    decoration: BoxDecoration(
              //      color: Color(0xffD66853),
              //      borderRadius: BorderRadius.vertical(
              //        bottom: Radius.circular(MediaQuery.of(context).size.width * 0.03),
              //      ),
              //    ),
              //    child: Container(
              //      alignment: Alignment.topCenter,
              //      height: 40,
              //      width: MediaQuery.of(context).size.width,
              //      child: Row(
              //
              //        mainAxisAlignment: MainAxisAlignment.center,
              //        children: [
              //          Container(
              //            width: MediaQuery.of(context).size.width * 0.8,
              //            height: 40,
              //            child: TextFormField(
              //              decoration: InputDecoration(
              //                prefixIcon: Padding(
              //                  padding: const EdgeInsets.only(left: 16.0),
              //                  child: ImageIcon(
              //                    AssetImage(
              //                      "assets/icons/search_icon.png",
              //                    ),
              //                    color: Colors.white,
              //                  ),
              //                ),
              //                filled: true,
              //                fillColor: Color(0xffFFFFFF).withOpacity(0.3),
              //                border: OutlineInputBorder(
              //                  borderSide: BorderSide.none,
              //                  borderRadius: BorderRadius.circular(25),
              //                ),
              //              ),
              //            ),
              //          ),
              //          ImageIcon(
              //            AssetImage(
              //              "assets/icons/notifications_icon.png",
              //            ),
              //            color: Colors.white,
              //            size: 45,
              //          ),
              //        ],
              //      ),
              //    ),
              //  ),
              Container(
                height: MediaQuery.of(context).size.height * 0.82,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => Container(
                    height: MediaQuery.of(context).size.height * 0.27,
                    margin: EdgeInsets.fromLTRB(23, 0, 23, 16),
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        color: Color(0xffC5C5C5),
                      ),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/images/img.png",
                          ),
                          minLeadingWidth: 30,
                          title: Text(
                            "Lorem Ipsum",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text("loremIpsumXXXX@gmail.com"),
                        ),
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text(
                              "Lorem ipsum dolor sijjt amhhethhy, nama consectetur adjjipibsf vdelit?Lorem ipsum dolor sijjt amhhethhy, nama consectetur adjjipibsf vdelit?Lorem ipsum dolor sijjt amhhethhy, nama consectetur adjjipibsf vdelit?Lorem ipsum dolor sijjt amhhethhy, nama consectetur adjjipibsf vdelit?Lorem ipsum dolor sijjt amhhethhy, nama consectetur adjjipibsf vdelit?Lorem ipsum dolor sijjt amhhethhy, nama consectetur adjjipibsf vdelit?Lorem ipsum dolor sijjt amhhethhy, nama consectetur adjjipibsf vdelit?",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        // Expanded(
                        //   child: Align(
                        //     alignment: Alignment.bottomCenter,
                        //     child:
                        Container(
                          height: 43,
                          padding: EdgeInsets.only(top: 4),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Answer",
                              filled: true,
                              fillColor: Color(0xffDADADA),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
