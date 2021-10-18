import 'package:ask_us/answer_screen.dart';
import 'package:ask_us/home.dart';

import 'package:ask_us/profile_page.dart';
import 'package:ask_us/question_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  Color activeColor = Color(0xffD66853);
  Color inactiveColor = Color(0xffC5C5C5);
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    //HomePage(),
    HomeScreen(),
    QuestionScreen(),
    AnswerScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _widgetOptions,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (v) {
          setState(
            () {
              _selectedIndex = v;
              _pageController.jumpToPage(
                _selectedIndex,
              );
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: activeColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ImageIcon(
                AssetImage("assets/icons/home.png"),
                color: activeColor,
              ),
            ),
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: inactiveColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ImageIcon(
                AssetImage("assets/icons/home.png"),
                color: inactiveColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: activeColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ImageIcon(
                AssetImage("assets/icons/help.png"),
                color: activeColor,
              ),
            ),
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: inactiveColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ImageIcon(
                AssetImage("assets/icons/help.png"),
                color: inactiveColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: activeColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ImageIcon(
                AssetImage("assets/icons/answer.png"),
                color: activeColor,
              ),
            ),
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: inactiveColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ImageIcon(
                AssetImage("assets/icons/answer.png"),
                color: inactiveColor,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: activeColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ImageIcon(
                AssetImage("assets/icons/profile.png"),
                color: activeColor,
              ),
            ),
            icon: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: inactiveColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8,
                  ),
                ),
              ),
              child: ImageIcon(
                AssetImage("assets/icons/profile.png"),
                color: inactiveColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
