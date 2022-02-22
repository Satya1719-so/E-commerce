import 'package:flutter/material.dart';

class Sizelist extends StatefulWidget {


  @override
  _SizelistState createState() => _SizelistState();
}

class _SizelistState extends State<Sizelist> {
  final List<String> sizeList =['S','M','L','XL','XXL'];
  var currentSelected=0;
  @override
  Widget build(BuildContext context) {
    return Container(
  height: 60,
  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
  child: ListView.separated(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context,index) => GestureDetector(
      onTap: (){
        currentSelected =index;
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        decoration: BoxDecoration(color: currentSelected==index?Theme.of(context).accentColor:Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black.withOpacity(0.1),width:2),
        ),
      child: Text(
        sizeList[index],
        style: TextStyle(
        color: currentSelected == index?Theme.of(context).primaryColor:Colors.grey,
        fontWeight: FontWeight.bold),
        ),
      ),
    ),
   separatorBuilder: (_, index)=>SizedBox(width: 10,),
   itemCount: sizeList.length),
    );
  }
}