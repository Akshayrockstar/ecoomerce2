import 'package:eccommerce2/common/widgets/toasts.dart';
import 'package:eccommerce2/pages/registeration/bloc/register_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterController{
  final BuildContext context;
  RegisterController({required this.context});
Future<void> handleEmailRegiste()
async {
  final state=context.read<RegisterBloc>().state;
  String userName=state.username;
   String email=state.email;
   String password=state.password;
   String confirmaPAssword=state.confirmPassword;
   if(userName.isEmpty){
     toastInfo(msg: "Please enter your Name");
     return;
   }
   if(email.isEmpty){
     toastInfo(msg: "Please enter you Email");
     return;
   }if(password.isEmpty){
     toastInfo(msg: "Please enter your Password");
     return;
   }if(confirmaPAssword.isEmpty){
     toastInfo(msg: "Please enter Confirm Password");
     return;
   }

   try{
      final credential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      if(credential.user!=null){
      await  credential.user?.sendEmailVerification();
      await  credential.user?.updateDisplayName(userName);
      toastInfo(msg: "an email send to your registered email.To activate please click the link");
      Navigator.of(context).pop();
      }

   }on FirebaseAuthException  catch(e){
     if(e.code=="week_password"){
       toastInfo(msg: "Your password is week");

     }else if(e.code=="email=already-in-use"){
       toastInfo(msg: "The email is already in use");
     }else if(e.code=="invalid-email"){
       toastInfo(msg: "The email is invalid");
     }
   }

}


}