import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState()) {
    on<UserName>(_userNameEvent);
    on<Email>(_emailEvent);
    on<Password>(_passwordEvent);
    on<ConfirmPassword>(_confirmEvent);
  }
 void _userNameEvent(UserName event,Emitter<RegisterState> emit){
    return emit(state.copyWith(username: event.username));
  }
  void _emailEvent(Email event,Emitter<RegisterState> emit){
    return emit(state.copyWith(email: event.email));
  }
  void _passwordEvent(Password event,Emitter<RegisterState> emit){
    return emit(state.copyWith(password: event.password));
  }void _confirmEvent(ConfirmPassword event,Emitter<RegisterState> emit){
    return emit(state.copyWith(confirmPassword: event.confirmPassword));
  }

}
