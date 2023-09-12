import 'package:eccommerce2/pages/registeration/bloc/register_bloc.dart';
import 'package:eccommerce2/pages/signin/bloc/sign_in_bloc.dart';
import 'package:eccommerce2/pages/signin/widgets/signin_buildwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: buildAppBarWidget("Sign Up"),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h,),
                    Center(child: reusableText(
                        "Enter your details below for ")),
                    SizedBox(height: 30.h,),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          reusableText("User Name"),

                          buildTextField(
                              "Enter UserName", "", Icons.person, (va) {
                            context.read<RegisterBloc>().add(UserName(va));
                          }),
                          reusableText("Email"),

                          buildTextField(
                              "Enter Email", "", Icons.email, (va) {
                            context.read<RegisterBloc>().add(Email(va));
                          }),

                          reusableText("Password"),

                          buildTextField(
                              "Enter Your Password", "password", Icons.lock, (
                              va) {
                            context.read<RegisterBloc>().add(Password(va));
                          }),
                          reusableText("Conform Password"),

                          buildTextField(
                              "Enter Your Conform Password", "password",
                              Icons.lock, (va) {
                            context.read<RegisterBloc>().add(ConfirmPassword(va));
                          }),
                          forgotTextButton(),
                          SizedBox(height: 30.h,),

                          loginAndRegisterButton("Register", "login", () {
                            Navigator.of(context).pushNamed("register");
                          }),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),


          ),
        );
      },
    );
  }
}
