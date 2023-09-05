import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<EmailEvent>(emailEvent);
    on<PasswordEvent>(passwordEvent);

  }
  void emailEvent(EmailEvent event,Emitter<SignInState> emit){
    emit(state.copyWith(email: event.email));
  }
  void passwordEvent(PasswordEvent event,Emitter<SignInState> emit){
    emit(state.copyWith(email: event.password));
  }
}
