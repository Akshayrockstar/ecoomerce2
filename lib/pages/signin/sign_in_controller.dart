import 'package:eccommerce2/pages/signin/bloc/sign_in_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInControoler{
  final BuildContext context;
  SignInControoler({required this.context});
  Future<void> signInHandleer(String type) async {
    try{
      if(type=="email"){
        final state=context.read<SignInBloc>().state;
        String emailAddress=state.email;
        String password=state.password;
        if(emailAddress.isEmpty){}
        if(password.isEmpty){}
        try{
          final credential=await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailAddress, password: password);
          if(credential.user==null){

          }
          if(!credential.user!.emailVerified){

          }
          var user=credential.user;
          if(user!=null){}
          else{}
        }catch(e){
          print(e);
          print("the 2nd error check$e");}
      }

    }
  catch(e){
      print("the last error check$e");
  }
  }

}