import 'package:courses/model/modelCategories.dart';
import 'package:courses/util/colors.dart';
import 'package:courses/view/home.dart';
import 'package:courses/view/myCourses.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'util/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  List view = [
   home(item),
   myCourses(),
    home(item),
   home(item),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:         
      
      Scaffold(
        backgroundColor:ThemeColors.amber,
            body: view[_index],
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ThemeColors.blue),
                margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: GNav(
                  onTabChange: (index) {
                    setState(() {
                     _index = index;
                     view[index];
                    
                  });
                  },
                  color: ThemeColors.white,
                  activeColor: ThemeColors.blue,
                  gap: 10,
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      backgroundColor: ThemeColors.white,
                      text: UiStrings.home,
                      iconSize: 10,
                      textStyle: const TextStyle(fontSize: 8),
                    ),
                    GButton(
                      icon: Icons.person,
                      text: UiStrings.myCourses,
                      backgroundColor: ThemeColors.white,
                      iconSize: 15,
                      textStyle: const TextStyle(fontSize: 8),
                    ),
                    GButton(
                      icon: Icons.play_circle,
                      backgroundColor: ThemeColors.white,
                      text: UiStrings.personal,
                      textSize: 2,
                      iconSize: 15,
                      textStyle: const TextStyle(fontSize: 8),
                    ),
                    GButton(
                        icon: Icons.favorite,
                        backgroundColor: ThemeColors.white,
                        iconSize: 15,
                        text: UiStrings.myFavorite,
                        textStyle: const TextStyle(fontSize: 8))
                  ],
                ))
           ));
 
      
  }
}
