import 'package:eccommerce2/common/api/course_api.dart';
import 'package:eccommerce2/common/entities/user.dart';
import 'package:eccommerce2/home/bloc/main_home_page_bloc.dart';
import 'package:eccommerce2/pages/global.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeController{
  final BuildContext context;
  HomeController({required this.context});
  UserData userProfile=Global.storageServices.getUserProfile();
  Future<void> intit() async {
    List<CourseModel> response= await CourseApi.getCourseList();
    print("the response is here$response");
    if(response.isNotEmpty){
      context.read<MainHomePageBloc>().add(HomePageCourseItem(response));
    }

  }



}