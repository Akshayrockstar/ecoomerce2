import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'application_event.dart';
part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc() : super(ApplicationState()) {
    on<ApplicationTAbEVent>(_ApllicationTAbleEventHandler);
  }
  void _ApllicationTAbleEventHandler(ApplicationTAbEVent event,Emitter<ApplicationState> emit){
return     emit(ApplicationState(currentIndex: event.index));

  }
}
