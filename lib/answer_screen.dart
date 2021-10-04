import "package:flutter/material.dart";

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.17,
              padding: EdgeInsets.fromLTRB(
                  16, MediaQuery.of(context).size.height * 0.05, 16, 0),
              decoration: BoxDecoration(
                color: Color(0xffD66853),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
              ),
              child: SizedBox(
                height: 25,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: ImageIcon(
                              AssetImage(
                                "assets/icons/search_icon.png",
                              ),
                              color: Colors.white,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xffFFFFFF).withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    ImageIcon(
                      AssetImage(
                        "assets/icons/notifications_icon.png",
                      ),
                      color: Colors.white,
                      size: 45,
                    ),
                  ],
                ),
              ),
            ),
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
    );
  }
}
