import 'package:flutter/material.dart';
import 'package:netflix/Screens/nav_screen.dart';


void main() => runApp(NetflixClone());

class NetflixClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        visualDensity:VisualDensity.adaptivePlatformDensity,
      ),
    
      home: NavScreen(),
    );
  }
}
