

import 'package:eccommerce2/common/values/colors.dart';
import 'package:eccommerce2/home/widgets/home_page_widegts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          buildAppBAr(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            AnimatedContainer(
                margin: EdgeInsets.only(top: 20.h),
                height: 120,
                color: Colors.red,
                duration:Duration(seconds: 2),
                child: Text("HELLO",style: TextStyle(
                  color: AppColors.primaryThreeElementText,
                  fontSize: 14.sp
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h),
                child: Text("dbestech",style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 14.sp
                ),),
              ),
              SizedBox(
                height: 15.h,
              ),
              serachView(),
              sliderView()
            ],
          ),
        ),
      ],
    );

  }
}
