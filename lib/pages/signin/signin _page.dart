import 'package:eccommerce2/pages/signin/widgets/signin_buildwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBarWidget(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h,),
                buildThirdPartyLogin(context),
                SizedBox(height: 13.h,),
                Center(child: reusableText("or use your email account to login")),
                SizedBox(height: 30.h,),
                Container(
              padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Email"),
                      SizedBox(height: 5.h,),
                      buildTextField("Enter Email address","",Icons.person),

                      reusableText("Password"),
                      SizedBox(height: 5.h,),
                      buildTextField("Enter Your Password","password",Icons.lock),
                      forgotTextButton(),
                      SizedBox(height: 30.h,),
                      loginAndRegisterButton("Login","login"),
                      SizedBox(height: 15.h,),
                      loginAndRegisterButton("Register",""),

                    ],
                  ),
                )

              ],
            ),
          ),
        ),


      ),
    );
  }
}
