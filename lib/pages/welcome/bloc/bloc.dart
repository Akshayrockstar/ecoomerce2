import 'package:eccommerce2/pages/welcome/bloc/events.dart';
import 'package:eccommerce2/pages/welcome/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePagebloc extends Bloc<WelocmePageEvents,WelomePageState>{

  WelcomePagebloc():super(WelomePageState()){
    on<WelocmePageEvents>((event, emit) {
      emit(WelomePageState(page: state.page));
    });
  }
}