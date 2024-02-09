import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eccommerce2/common/entities/user.dart';
import 'package:meta/meta.dart';

part 'main_home_page_event.dart';
part 'main_home_page_state.dart';

class MainHomePageBloc extends Bloc<MainHomePageEvent, MainHomePageState> {
  MainHomePageBloc() : super(MainHomePageState()) {
    on<HomePageDots>(_dotEvent);
    on<HomePageCourseItem>(_homePageCourseItem);
  }

  void _dotEvent(HomePageDots event,Emitter<MainHomePageState> emit){
    return emit(state.copyWith(index: event.index));
  }
  void _homePageCourseItem(HomePageCourseItem event,Emitter<MainHomePageState>emit){
    emit(state.copyWith(courseList: event.courseList));
  }
}
