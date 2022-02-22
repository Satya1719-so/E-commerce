import 'package:flutter/material.dart';
import 'package:wheather/Screen/clothes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Detailapp extends StatefulWidget {
 final Clothes clothes;
 Detailapp(this.clothes);

  @override
  _DetailappState createState() =>  _DetailappState();
}

class  _DetailappState extends State <Detailapp> {
  final CarouselController _controller = CarouselController();
  int _currentPage =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
          child: CarouselSlider(
            carouselController:_controller,
            options:CarouselOptions(
              height:500,
              viewportFraction:1,
              onPageChanged:(index,reason){
                setState(() {
                  _currentPage = index;
                });
              }
            ), 
            items: widget.clothes.detailUrl.map((e)=>Builder(builder: (context)=>Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('$e'),
                fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(25)
              ),
            ),
             ) )
            .toList(),
            )
          ),
        Positioned(
          bottom: 30,
          left: 180,
          child: Row(children:widget.clothes.detailUrl.asMap().entries.map(
          (entry)=> GestureDetector(
            onTap: ()=>_controller.animateToPage(entry.key),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width:12,
              height:12,
              decoration:BoxDecoration(
                shape:BoxShape.circle,
                color:Colors.white.withOpacity(
                  _currentPage == entry.key?0.9:0.4
                )
              )
            ),
          )

        ).toList(),
        )),
        Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            right: 25
          ),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
             children:[
               GestureDetector(
                 onTap: () {
                   Navigator.of(context).pop();
                 },
                 child: Container(
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(
                     color: Colors.white.withOpacity(0.9),
                     shape: BoxShape.circle
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Icon(
                       Icons.arrow_back_ios,
                       color: Colors.grey,
                       size: 20,
                     ),
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),
                 decoration: BoxDecoration(
                   color: Colors.white.withOpacity(0.9),
                   shape: BoxShape.circle
                 ),
                 child: Icon(
                   Icons.more_horiz,
                   color: Colors.grey,
                   size: 20,
                 ),
               )

            ],
        
          ),
        )
      ],)
    );
  }
}