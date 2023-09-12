


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastInfo({required String msg,Color bagroundColour=Colors.black,Color textColor=Colors.white}){
  return Fluttertoast.showToast(msg: msg,textColor:textColor,backgroundColor: bagroundColour ,
  timeInSecForIosWeb: 2,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.BOTTOM_LEFT);
}
