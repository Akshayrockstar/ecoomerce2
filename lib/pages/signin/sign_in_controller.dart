import 'package:eccommerce2/common/values/constants.dart';
import 'package:eccommerce2/common/widgets/toasts.dart';
import 'package:eccommerce2/pages/global.dart';
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
        if(emailAddress.isEmpty){
          toastInfo(msg: "Please enter your email address");
          return;
        }
        if(password.isEmpty){
          toastInfo(msg: "Please enter your Password");
          return;
        }
        try{
          final credential=await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailAddress, password: password);
          print("user!=null case cr$credential");
          if(credential.user==null){
            toastInfo(msg: "you are not a user ");
            return;

          }
          if(!credential.user!.emailVerified){
            print("emaili not verified");
            toastInfo(msg: "email not verified ");

          }
          var user=credential.user;
          if(user!=null){
            print("user!=null case");
            // Global.storageServices.setString(AppConstants.torage_device_open_firsttime, "12345");
          Navigator.of(context).pushNamedAndRemoveUntil("/application", (route) => false);
          }
          else{}
        }on FirebaseAuthException catch(e){
          print("the code is${e.code}");
          if(e.code=="user-not-found"){


            toastInfo(msg: "No user found that email");
          }
          else if(e.code=="wrong-password"){

            toastInfo(msg: "the entered password is wrong");
          }
          else if(e.code=="invalid-email"){

            toastInfo(msg: "the email is invalid");
          }
        }
        catch(e){
          print(e);
          print("the 2nd error check$e");}
      }

    }
  catch(e){
      print("the last error check$e");
  }
  }

}