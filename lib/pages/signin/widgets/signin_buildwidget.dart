import 'package:eccommerce2/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBarWidget(String name){
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,

    title: Text(name,style: TextStyle(color: AppColors.primaryText),),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Container(
        height: 1,
        decoration: BoxDecoration(
          color:AppColors.primarySecondaryBackground,

        ),
      ),
    ),
  );
}
 Widget buildThirdPartyLogin(BuildContext context){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 22.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _reusableIconImage("data:image/jpeg;base64,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"),
SizedBox(width: 21.w,),
_reusableIconImage("https://th.bing.com/th?id=OIP.gZzA2Bibe-iMguIEps9rRgHaI0&w=229&h=272&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
        SizedBox(width: 21.w,),
  _reusableIconImage("https://th.bing.com/th?id=OIP.aubU2lXxC1ZmPDdf-koomwHaH_&w=240&h=259&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2")
      ],
    ),
  
  );

 }
  Widget _reusableIconImage(String imageName){
  return InkWell(
    child: Container(
      height: 15.w,
      width: 15.w,
      child: Image(
        image: NetworkImage(imageName),fit: BoxFit.fitHeight,),
    ),
  );
  }
  Widget reusableText(String name){
  return Container(
    child: Text(
      name,style: TextStyle(color: Colors.grey.withOpacity(.3),fontWeight: FontWeight.normal,fontSize: 12.sp),
    ),
  );
  }


  Widget buildTextField(String hintText,String  textType,IconData icons,Function (String)? func){
  return Container(
    margin: EdgeInsets.only(bottom: 20.5),
    padding: EdgeInsets.only(left: 17.w),
    width: 350.w,
    height: 50.h,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(11.w)),
      border: Border.all(
        color: Colors.black26
      )
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Icon(icons),
        ),
        Expanded(child: Container(
          height: 50.h,
          child:
          TextField(
            onChanged: (va){
              func!(va);

            },
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              helperText: hintText,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              ),
              helperStyle: TextStyle(color: Colors.grey.withOpacity(.5))

            ),
            autocorrect: true,
            obscureText: textType=="password"?true:false,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 8.sp,

            ),
          ),
        ))

      ],
    ),
    

  );
  }


  Widget forgotTextButton(){
  return Container(
    // margin: EdgeInsets.only(left: 10.w),
    child: InkWell(
      onTap: (){

      },
      child:Text("Forgot Password",style: TextStyle(color:AppColors.primaryText,
      decoration: TextDecoration.underline,
      fontSize: 4.sp,
      decorationColor: Colors.blue),) ,
    ),
  );

  }
  Widget loginAndRegisterButton(String buttonName,String buttonType,Function onTap ){
  return GestureDetector(
    onTap: (){
      onTap();
    },
    child: Container(
      height: 50.h,
      width: 350.w,
      decoration: BoxDecoration(
        color:buttonType=="login"? AppColors.primaryElement:AppColors.primaryBackground,
        borderRadius: BorderRadius.circular(2.w),
        border: Border.all(
          color: buttonType=="login"?Colors.transparent:AppColors.primaryFourElementText
        ),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 2,
            color: Colors.grey.withOpacity(.5),
            offset: Offset(0,2)
          )
        ]
      ),
      child: Center(child: Text(buttonName,style: TextStyle(color:buttonType=="login"? AppColors.primaryBackground:AppColors.primaryText,fontSize: 8.sp,fontWeight: FontWeight.normal),)),
    ),
  );
  }