import 'package:flutter/material.dart';
import 'package:space1/planets.dart';
import 'package:space1/planets_info.dart';
import 'main_screen.dart';

void main(){
   runApp(MyAPP());
}
class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Space',
      debugShowCheckedModeBanner: false,
      initialRoute: 'main',
      routes: {
        'main': (context) => main_screen(),
        'planets': (context) => PlanetsScreen(),
        'planets_info': (context) =>  PlanetsInfo(),
      },
    );
  }
}


