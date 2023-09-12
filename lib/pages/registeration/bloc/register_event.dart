part of 'register_bloc.dart';


abstract class RegisterEvent {
  const RegisterEvent();

}
class UserName extends RegisterEvent{
  final String username;
const  UserName( this.username);

}
class Email extends RegisterEvent{
  final String email;
const  Email( this.email);

}
class Password extends RegisterEvent{
  final String password;
const  Password( this.password);

}class ConfirmPassword extends RegisterEvent{
  final String confirmPassword;
const  ConfirmPassword( this.confirmPassword);

}
