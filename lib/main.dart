import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'util/strings.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
      body: Column(),

     

bottomNavigationBar: const GNav(

  gap: 10,
  tabs: [
GButton( icon: Icons.home,backgroundColor: Color.fromARGB(255, 253, 14, 14),text:UiStrings.home,iconSize: 20,textStyle:TextStyle(fontSize: 15),),
GButton( icon: Icons.play_circle
,backgroundColor: Color.fromARGB(255, 250, 245, 245),text: UiStrings.myCourses,textSize: 2,iconSize: 20,textStyle:TextStyle(fontSize: 10),),
GButton( icon: Icons.favorite,backgroundColor: Color.fromARGB(255, 253, 14, 14),text: UiStrings.myFavorite,iconSize: 20,textStyle:TextStyle(fontSize: 10),),
GButton( icon: Icons.person,backgroundColor: Color.fromARGB(255, 253, 14, 14),iconSize: 20,text: UiStrings.personal,textStyle:TextStyle(fontSize: 10))


],)
 

),

   
   
    );
  }
}


    
    
    
   
  


