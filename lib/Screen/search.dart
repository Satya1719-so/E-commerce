import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final tagList =["Woman","Men","child"];
   return Container(
     margin:EdgeInsets.only(top: 25,left: 25,right: 25),
     child:Column(
       children: [
         Row(
           children: [
             Flexible(
               flex:1,
               child: TextField(
                 cursorColor: Colors.grey,
                 decoration: InputDecoration(
                   fillColor: Colors.white,
                   filled: true,
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: BorderSide.none
                   ),
                   hintText: "search t-Shirt",
                   hintStyle: TextStyle(color:Colors.grey,fontSize: 18),
                   prefixIcon: Container(
                     padding: EdgeInsets.all(15),
                     child: Image.asset("assets/icons/search.jpg",width: 10,),
                     
                   )
                 ),
               ),
             ),
            Container(
                 margin: EdgeInsets.only(left:15),
                 padding: EdgeInsets.all(15),
                 decoration: BoxDecoration(
                   color: Theme.of(context).primaryColor,
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Image.asset("assets/icons/fillter.jpg",width: 18,),
               ),
             
           ],
         ),
         Row(
           children: tagList
             .map((e) => Container(
               margin: EdgeInsets.only(top: 10,right: 10),
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Theme.of(context).accentColor
               ),
               child: Text(e,
               style: TextStyle(
                 color: Colors.grey
               ),),
               ))
             .toList(),
           
         ),
       ],
     ) ,
   );
  }

}