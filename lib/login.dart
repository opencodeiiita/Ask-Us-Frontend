import 'package:ask_us/main.dart';
import 'package:ask_us/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFE7EBE7),
        body: Padding(
            padding: EdgeInsets.fromLTRB(10, 60, 10, 50),
            child: ListView(
              children: <Widget>[
                Hero(
                  tag: 'imageHero',
                  child:Container(
                 width: 100.00,
                 height: 100.00,
                 decoration: new BoxDecoration(
                 image: new DecorationImage(
                     image: ExactAssetImage('assets/images/askUslogo.png'),
                     fit: BoxFit.fitHeight,
                     ),
                   shape: BoxShape.circle,
                 )),),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Log In',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 24,
                          color: Color.fromRGBO(0, 0, 0, 0.75)),
                    )),
                Container(
                  height: 60,
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      filled: true,
                      fillColor: Color(0xFFDADADA),
                      labelStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0XFF727272)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(style: BorderStyle.none, width: 0),
                      ),
                      labelText: 'Email/AskUs ID',
                    ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      filled: true,
                      fillColor: Color(0xFFDADADA),
                      labelStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0XFF727272)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(style: BorderStyle.none, width: 0),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Spacer(),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          ),
                          onPressed: () {
                            //forgot password screen
                          },
                          child: Text(
                            'Forgot Password',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 13,
                              color: Color.fromRGBO(214, 104, 83, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 40,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        primary: Color.fromRGBO(214, 104, 83, 1),
                      ),
                      onPressed: () {
                        Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (BuildContext context) => HomePage()));
                        // print(nameController.text);
                        // print(passwordController.text);
                      },
                      child: Text(
                        'Log in',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 37, 60, 0),
                  child: Container(
                      child: Row(children: [
                    SizedBox(
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.60))),
                      height: 1.5,
                      width: 57,
                    ),
                    Container(
                      child: Text(
                        'OR',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0XFF727272),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.60))),
                      height: 1.5,
                      width: 57,
                    ),
                  ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 37, 10, 0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          primary: Color(0XFFD66853).withOpacity(0.29),
                          backgroundColor: Color(0XFFD66853).withOpacity(0.29),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 250,
                              child: FittedBox(
                                child: Text(
                                  'Log In with your Google Account',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                                child:
                                    Image.asset('assets/images/GoogleIcon.png'))
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: (BuildContext context) => HomePage()));
                        // print(nameController.text);
                        // print(passwordController.text);
                      },
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Not a member yet?',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                            child: Text(
                              'join now',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 13,
                                color: Color.fromRGBO(214, 104, 83, 1),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                                                              builder: (BuildContext context) => SignUpScreen()));
                            }),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}
