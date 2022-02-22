import 'package:flutter/material.dart';
import 'package:wheather/Screen/clothes.dart';
import 'package:wheather/Screen/detail.dart';

class Item extends StatelessWidget {
  
final Clothes clothes;
Item(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Container(
child:GestureDetector(
  onTap: (){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context)=>Detail(clothes))
    );
  },
  child:   Card(
  
    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15),
  
  ),
  
  child: Column(
  
    crossAxisAlignment: CrossAxisAlignment.center,
  
    children: [
  
      Stack(
  
        children: [
  
          Container(
  
            margin: EdgeInsets.all(8),
  
            height: 170,
  
            width: 200,
  
            decoration: BoxDecoration(
  
              borderRadius: BorderRadius.circular(15),
  
              image: DecorationImage(
  
                image: AssetImage(clothes.imageUrl),
  
                fit:BoxFit.fitHeight),
  
              ),
  
  
  
            ),
  
            Positioned(
  
              right: 20,
  
              top: 15,
  
              child: Container(
  
                padding: EdgeInsets.all(8),
  
                decoration: BoxDecoration(
  
                  color: Colors.white.withOpacity(0.9),
  
                  shape: BoxShape.circle
  
                ),
  
        child: Icon(Icons.favorite,color: Colors.red,
  
        size: 15,),
  
      )) 
  
          
  
        ],
  
      ),
  
      Text(clothes.title,
  
      style: TextStyle(
  
        fontWeight: FontWeight.bold,
  
        height: 1.5
  
      ),),
  
      Text(clothes.subtitle,
  
        style: TextStyle(
  
        fontWeight: FontWeight.bold,
  
        height: 1.5
  
      ),),
  
      Text(clothes.price,
  
       style: TextStyle(
  
        fontWeight: FontWeight.bold,
  
        height: 1.5,
  
        color: Theme.of(context).primaryColor
  
      ),)
  
     
  
    ],
  
  ),
  
  ),
),
    );
  }
}