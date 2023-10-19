import 'package:courses/util/colors.dart';
import 'package:courses/view/home/home.dart';
import 'package:courses/view/myCourses.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'common/gButton.dart';
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
   home(),
   myCourses(),  
   home(),
   myCourses(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:         
      
      Scaffold(
       backgroundColor: ThemeColors.amber,
            body:Container(child: view[_index]
            ,)
                ,
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
                     gButton(Icons.home,UiStrings.home),
                gButton(Icons.person, UiStrings.myCourses),
                gButton(Icons.play_circle_outline_outlined,  UiStrings.personal),                                        
                   gButton(Icons.favorite,  UiStrings.myFavorite), 
                  ],
                ))
           ));
 
      
  }
}
