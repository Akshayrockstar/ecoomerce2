import 'package:eccommerce2/pages/profile/widgets/profile_widget.dart';
import 'package:firebase_core_web/firebase_core_web_interop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Icon(Icons.menu,color: Colors.black,),
              ),
              Container(child: Text("Profile",style: TextStyle(
                color: Colors.black
              ),),),
              Container(
                child: Icon(Icons.more_vert,color: Colors.black,),
              ),
            ],
          ),
        ),
      ) ,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profileEditIcon()
            ],
          ),
        ),
      ),
    );
  }
}
