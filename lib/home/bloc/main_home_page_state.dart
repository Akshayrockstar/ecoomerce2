part of 'main_home_page_bloc.dart';

 class MainHomePageState {
   final int index;
   final List<CourseModel> courseList;
   MainHomePageState({this.index=0,this.courseList=const []});

   MainHomePageState copyWith({int? index,List<CourseModel>? courseList}){
     return MainHomePageState(index:index??this.index,courseList:courseList??this.courseList  );




   }

 }


