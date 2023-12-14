part of 'main_home_page_bloc.dart';


abstract class MainHomePageEvent {
  MainHomePageEvent();
}
class HomePageDots extends MainHomePageEvent{
  final int index;
  HomePageDots(this.index
      );
}
