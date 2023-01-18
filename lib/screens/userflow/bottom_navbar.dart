import 'package:erpl_learnpress/screens/pages/chat_screen.dart';
import 'package:erpl_learnpress/widgets/add_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resource/app_theme.dart';
import '../../widgets/dimentions.dart';
import '../pages/course_fields/courses_screen.dart';
import '../pages/home_screen.dart';
import '../pages/my_courses_screen.dart';
import '../pages/profile_Screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    CoursesScreen(),
    MyCoursesScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  final PageStorageBucket list = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: list,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.primaryColor,
          child: SizedBox(
            height: AddSize.size25,
            child: Image.asset(
              fit: BoxFit.contain,
              'assets/icons/home.png',
              color: currentTab == 2 ? AppTheme.whitebg : Colors.white,
            ),
          ),
          onPressed: () {
            setState(() {
              currentScreen = HomeScreen();
              currentTab = 2;
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: AddSize.size80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: AddSize.size40,
                    onPressed: () {
                      setState(() {
                        currentScreen = CoursesScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: AddSize.size22,
                          child: Image.asset(
                            fit: BoxFit.contain,
                            'assets/icons/course.png',
                            color: currentTab == 0
                                ? AppTheme.primaryColor
                                : Colors.grey,
                          ),
                        ),
                        Text(
                          'Courses',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? AppTheme.primaryColor
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: AddSize.size30,
                    onPressed: () {
                      setState(() {
                        currentScreen = MyCoursesScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: AddSize.size25,
                          child: Image.asset(
                            fit: BoxFit.contain,
                            'assets/icons/courses.png',
                            color: currentTab == 1
                                ? AppTheme.primaryColor
                                : Colors.grey,
                          ),
                        ),
                        Text(
                          'My Courses',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? AppTheme.primaryColor
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              //right
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    // minWidth: AddSize.size30,
                    onPressed: () {
                      setState(() {
                        currentScreen = ChatScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: AddSize.size25,
                          child: Image.asset(
                            fit: BoxFit.contain,
                            'assets/icons/chat.png',
                            color: currentTab == 3
                                ? AppTheme.primaryColor
                                : Colors.grey,
                          ),
                        ),
                        // Icon(
                        //   Icons.add,
                        //   color: currentTab == 3 ? Colors.blue : Colors.grey,
                        // ),
                        Text(
                          'Chat',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? AppTheme.primaryColor
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: AddSize.size40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfileScreen();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: AddSize.size22,
                          child: Image.asset(
                            fit: BoxFit.contain,
                            'assets/icons/person.png',
                            color: currentTab == 4
                                ? AppTheme.primaryColor
                                : Colors.grey,
                          ),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: currentTab == 4
                                  ? AppTheme.primaryColor
                                  : Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
