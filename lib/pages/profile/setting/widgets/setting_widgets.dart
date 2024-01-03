import 'package:eccommerce2/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(){
  return AppBar(
    title: Container(
      child: Text("Setting",style: TextStyle(
        color: AppColors.primaryElement,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold
      ),),
    ),
  );
}