part of 'main_home_page_bloc.dart';

 class MainHomePageState {
   final int index;
   MainHomePageState({this.index=0});

   MainHomePageState copyWith({int? index}){
     return MainHomePageState(index:index??this.index );




   }

 }


