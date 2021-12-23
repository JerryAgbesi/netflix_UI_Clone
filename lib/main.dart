import 'package:flutter/material.dart';
import 'Screens/screens.dart';

void main() => runApp(NetflixClone());

class NetflixClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        visualDensity:VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
