import 'package:courses/util/colors.dart';
import 'package:courses/util/strings.dart';
import 'package:flutter/material.dart';
home() {
  Scaffold(
    appBar: AppBar(
elevation: 0,
backgroundColor: ThemeColors.yellow,
leading:
 CircleAvatar(
                radius: 20,
                backgroundColor:ThemeColors.shadow,
                child: 
                  Icon(
                    Icons.menu,size: 20,
                    color: ThemeColors.white,
                  ),              
              ),
actions:  [
 CircleAvatar(
                radius: 20,
                backgroundColor:ThemeColors.shadow,
                child: 
                  Icon(
                    Icons.search,
                    color: ThemeColors.white,
                  ),
                ),
 const Padding( padding: EdgeInsets.symmetric(horizontal: 10))
],    
    ),
    body:
    Column(
     children:[ Container(
      color: ThemeColors.yellow,
      height: 180,
      width: double.infinity,
      child: 
      Column(
        children:[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
              children: [  
       const SizedBox(height: 30,),
     const Text(UiStrings.helloAbhishek,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      const SizedBox(height: 10,),
     Text(UiStrings.findPerfect,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: ThemeColors.blue),),
      const SizedBox(height: 10,),
       Text(UiStrings.coursesForYou,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: ThemeColors.blue)),
          ],) ,),
       
       
       
      ],)
        
    ),
const SizedBox(height: 20,),
Container(
 color:ThemeColors.amber,
 height: double.infinity,
 padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,  
    children: const [
       Text(UiStrings.categories,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),), 
   Text(UiStrings.seeAll,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),), 
  ],),
),
Column(
  children: const [
    // Icon(Icons.add_to_queue,size: 20,),
     Text(UiStrings.categories,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
  ],
)
    ] )  ,
   );


}
