import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_home_page_event.dart';
part 'main_home_page_state.dart';

class MainHomePageBloc extends Bloc<MainHomePageEvent, MainHomePageState> {
  MainHomePageBloc() : super(MainHomePageState()) {
    on<HomePageDots>(_dotEvent);
  }

  void _dotEvent(HomePageDots event,Emitter<MainHomePageState> emit){
    return emit(state.copyWith(index: event.index));
  }
}
