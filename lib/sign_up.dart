import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFD66853),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "AskUs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            SizedBox(height: size.height * 0.07),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFFF3D1CB),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 1,
                      color: Color(0xFFD66853),
                      style: BorderStyle.solid)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFFF3D1CB),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 1,
                      color: Color(0xFFD66853),
                      style: BorderStyle.solid)),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFFF3D1CB),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                      width: 1,
                      color: Color(0xFFD66853),
                      style: BorderStyle.solid)),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none),
                onChanged: (value) {},
              ),
            ),
            SizedBox(height: size.height * 0.07),
            GestureDetector(
              onTap: (
                  //functionality yet to be added
                  ) {},
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFFFFFFF)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0xFFD66853), fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.07),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
              width: size.width * 0.8,
              child: Row(
                children: <Widget>[
                  Expanded(child: Divider()),
                  Text("OR"),
                  Expanded(child: Divider()),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: (
                      //functionality yet to be added
                      ) {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF3D1CB),
                    ),
                    child: Text(
                      "Google",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (
                      //functionality yet to be added
                      ) {},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF3D1CB),
                    ),
                    child: Text(
                      "Facebook",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already a member? "),
                SizedBox(width: size.height * 0.02),
                GestureDetector(
                  onTap: (
                      //functionality yet to be added
                      ) {},
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
