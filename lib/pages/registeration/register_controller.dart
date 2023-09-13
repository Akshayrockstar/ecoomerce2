import 'package:eccommerce2/common/widgets/toasts.dart';
import 'package:eccommerce2/pages/registeration/bloc/register_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterController{
  final BuildContext context;
  RegisterController({required this.context});
   Future<void> handleEmailRegiste() async {
     final state=context.read<RegisterBloc>().state;
     String userName=state.username;
     String email=state.email;
     String password=state.password;
     String cofirmPasswod=state.confirmPassword;

     if(userName.isEmpty){
       toastInfo(msg: "Please enter your username");
       return;
     }  if(email.isEmpty){
       toastInfo(msg: "Please enter your email");
       return;
     }  if(password.isEmpty){
       toastInfo(msg: "Please enter your password");
       return;
     }  if(cofirmPasswod.isEmpty){
       toastInfo(msg: "Please enter your confirm password");
       return;
     }
     try{
       final credential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
       if(credential.user!=null){
      await   credential.user?.sendEmailVerification();
      await   credential.user?.updateDisplayName(userName);
      Navigator.of(context).pop();
       }
     }on FirebaseAuthException catch(e){
       if(e.code=="email-already-in-use"){
         toastInfo(msg: "Your email already exist");

       }else  if(e.code=="invalid-email"){
         toastInfo(msg: "Your email is invalid");

       }else  if(e.code=="weak-password"){
         toastInfo(msg: "Your password is week");

       }
     }


   }


}