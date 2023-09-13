import 'package:flutter/material.dart';

Widget  buildPage(int index){
  List<Widget>_widgets=[
    Center(child: Text("Home screen"),),
    Center(child: Text("Search screen"),),
    Center(child: Text("Profile screen"),),
    Center(child: Text("Home screen"),),
    Center(child: Text("Home screen"),),
  ];
  return  _widgets[index];
}