import 'package:flutter/material.dart';
import 'package:wheather/Screen/clothes.dart';

class Addcart extends StatelessWidget {
  
final Clothes clothes;
Addcart(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(clothes.price,
            style: TextStyle(
              fontSize: 16,color: Colors.red
            ),),
            Text(
              clothes.price,
              style: TextStyle(
                height: 1.5,fontSize: 20,fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
        SizedBox(width: 20,),

        Expanded(
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 0,
                primary: Theme.of(context).primaryColor
              ),
              onPressed: (){}, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Add to Cart',
                style: TextStyle(fontSize: 20),),
                SizedBox(width: 10,),
                Icon(Icons.shopping_cart_outlined)
              ],
            )),
          ),
        )
      ],),
    );
  }
}