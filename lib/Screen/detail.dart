import 'package:flutter/material.dart';
import 'package:wheather/Screen/addcart.dart';
import 'package:wheather/Screen/clothes.dart';
import 'package:wheather/Screen/detailapp.dart';
import 'package:wheather/Screen/info.dart';
import 'package:wheather/Screen/sizelist.dart';

class Detail extends StatelessWidget {
  final Clothes clothes;
  Detail(this.clothes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child:
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Detailapp(clothes),Info(clothes),Sizelist(),
           Addcart(clothes)
         ],
       ),)
    );
  }
}