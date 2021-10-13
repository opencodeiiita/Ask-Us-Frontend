import 'dart:io';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;

  _imgFromCamera() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = File(image!.path);
    });
  }

  _imgFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = File(image!.path);
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    String name = 'Robb stark';
    String id = 'king_in_the_north';
    String mail = 'robb@gmail.com';
    String ph = '9798989898';
    return Scaffold(
      backgroundColor: Color(0xFFE7EBE7),
      body: Column(
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                //alignment: ,
                // padding:
                //     EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 10),
                decoration: BoxDecoration(
                  color: Color(0xFFD66853),
                  borderRadius: BorderRadius.vertical(
                      bottom:
                          Radius.circular(SizeConfig.blockSizeHorizontal * 5)),
                ),
                // height: blockSizeVertical * .2, //it was 0.3
                // width: blockSizeHorizontal,
                height: SizeConfig.blockSizeVertical * 15,
                width: SizeConfig.blockSizeHorizontal * 100,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.blockSizeVertical * 4),
                  child: Text(
                    "My Profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.blockSizeVertical * 3,
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: -SizeConfig.blockSizeVertical * 8,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: SizeConfig.blockSizeHorizontal * 10,
                      backgroundColor: Colors.white,
                      backgroundImage: _image == null
                          ? NetworkImage(
                              'https://th.bing.com/th/id/OIP.4d8-5ZJ6WhMc0SrABL_NnwHaHa?pid=ImgDet&w=525&h=525&rs=1')
                          : Image.file(_image!).image,
                    ),
                    Positioned(
                      bottom: SizeConfig.blockSizeVertical * 0.05,
                      right: SizeConfig.blockSizeHorizontal * 0.005,
                      child: InkWell(
                        onTap: () {
                          _showPicker(context);
                        },
                        child: CircleAvatar(
                          radius: SizeConfig.blockSizeHorizontal * 3.5,
                          child: InkWell(
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: SizeConfig.blockSizeHorizontal * 4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 10),
          Container(
            padding: EdgeInsets.only(
                left: SizeConfig.blockSizeHorizontal * 4), //20 tha
            width: SizeConfig.blockSizeHorizontal * 90,
            height: SizeConfig.blockSizeVertical * 25,
            decoration: BoxDecoration(
                color: Color(0xFFE7EBE7),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 1)]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Name:",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 2.5,
                          color: Colors.black),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    Text(
                      "AskUs ID:",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 2.5,
                          color: Colors.black),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    Text(
                      "Email:",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 2.5,
                          color: Colors.black),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    Text(
                      "Phone No:",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 2.5,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(width: SizeConfig.blockSizeHorizontal * 2),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 3,
                          color: Colors.black),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    Text(
                      id,
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 3,
                          color: Colors.black),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    Text(
                      mail,
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 3,
                          color: Colors.black),
                    ),
                    SizedBox(height: SizeConfig.blockSizeVertical * 2),
                    Text(
                      ph,
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical * 3,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 3),
          Container(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (
                      //functionality yet to be added
                      ) {},
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 7,
                    width: SizeConfig.blockSizeHorizontal * 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFE5DED8)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Questions",
                            style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 2.5,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 1),
                GestureDetector(
                  onTap: (
                      //functionality yet to be added
                      ) {},
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 7,
                    width: SizeConfig.blockSizeHorizontal * 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFE5DED8)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Answers",
                            style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 2.5,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 1),
                GestureDetector(
                  onTap: (
                      //functionality yet to be added
                      ) {},
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 7,
                    width: SizeConfig.blockSizeHorizontal * 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFE5DED8)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Bookmarks",
                            style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 2.5,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 1),
                GestureDetector(
                  onTap: (
                      //functionality yet to be added
                      ) {},
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 7,
                    width: SizeConfig.blockSizeHorizontal * 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFE5DED8)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.blockSizeHorizontal * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Settings",
                            style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 2.5,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
