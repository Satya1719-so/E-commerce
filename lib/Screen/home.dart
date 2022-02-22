 import 'package:flutter/material.dart';
import 'package:wheather/Screen/newarrival.dart';
import 'package:wheather/Screen/search.dart';

import 'appbar.dart';
// ignore: unused_import

 // ignore: must_be_immutable
 class Home extends StatelessWidget {
   final bottomList =['home','menu','heart','user'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ CustomAppBar(),Search(),
          Newarrival(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_sharp),
        label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.menu_outlined),
        label: 'Add Store',),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),
        label: 'Add Store',),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),
        label: 'Profile')
        ],),
      );
      
  }

     
        
 }