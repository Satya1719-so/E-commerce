import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wheather/Screen/login.dart';
import 'package:firebase_core/firebase_core.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        backgroundColor: Color(0xFFFFAFAFA),
        primaryColor: Color(0xFFFFBD00),
        accentColor: Color(0xFFFFEBC7)
      ),
      home: Login()
    );
  }
}


  
