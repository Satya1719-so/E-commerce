
import 'package:flutter/material.dart';
import 'package:wheather/Screen/catagory.dart';
import 'package:wheather/Screen/clothes.dart';

import 'arrivalitem.dart';

class Newarrival extends StatelessWidget {
  
final clothesList = Clothes.generateClothes();
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Catagory("New Arrival"),
          Container(
            height: 280,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection:Axis.horizontal,
              itemBuilder: (context,index) => Item(clothesList[index]), separatorBuilder: (_, index) => SizedBox(width: 10,), itemCount:clothesList.length),
          )
        ],
      )
    );
  }
}