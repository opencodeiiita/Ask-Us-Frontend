import 'package:flutter/material.dart';

//Colors
const Color primaryColor = Color.fromRGBO(214, 104, 83, 1);

Color primaryColorLight({double opacity = 0.3}) =>
    Color.fromRGBO(214, 104, 83, opacity);

const Color secondaryColor = Color.fromRGBO(218, 218, 218, 1);

Color secondaryColorLight({double opacity = 0.3}) =>
    Color.fromRGBO(218, 218, 218, opacity);

const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;

//Images and Icons String
String tempProfilePic = "assets/images/img.png";
String answerIcon = "assets/icons/answer.png";
String helpIcon = "assets/icons/help.png";
String homeIcon = "assets/icons/home.png";
String notificationIcon = "assets/icons/notifications_icon.png";
String searchIcon = "assets/icons/search_icon.png";
String profileIcon = "assets/icons/profile.png";

//decoration Items
BoxDecoration bottomNavigationBarDecoration(Color color) {
  //used in bottom navigation bar
  return BoxDecoration(
    border: Border.all(
      color: color,
      width: 2,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(
        8,
      ),
    ),
  );
}

BoxDecoration circularContainerDecoration(
    Color color, Color borderColor, double borderRadius) {
  //used mainly in authentication screens
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(borderRadius),
    border: Border.all(width: 1, color: borderColor, style: BorderStyle.solid),
  );
}

//textStyles
TextStyle header1(
    {Color color = blackColor, FontWeight fontWeight = FontWeight.w600}) {
  return TextStyle(
    fontSize: 18,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle header2(
    {Color color = blackColor, FontWeight fontWeight = FontWeight.w600}) {
  return TextStyle(
    fontSize: 16,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle header3(
    {Color color = blackColor, FontWeight fontWeight = FontWeight.w600}) {
  return TextStyle(
    fontSize: 14,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle header4(
    {Color color = blackColor, FontWeight fontWeight = FontWeight.w600}) {
  return TextStyle(
    fontSize: 12,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle headerCustom(double fontSize, Color color, FontWeight fontWeight) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}
