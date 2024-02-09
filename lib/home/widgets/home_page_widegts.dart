import 'package:dots_indicator/dots_indicator.dart';
import 'package:eccommerce2/common/entities/user.dart';
import 'package:eccommerce2/common/values/colors.dart';
import 'package:eccommerce2/home/bloc/main_home_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildAppBAr(){
  return  Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(.2),
          blurRadius: 1,
          spreadRadius: 1,
          offset: Offset(-1,0)

        )
      ]
    ),
      // color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            height: 12.h,
            width: 15.w,
            child: Icon(Icons.menu,color: Colors.black,),
          ),
          Spacer(),
          GestureDetector(
            onTap: (){},
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.person_off,color: Colors.black,),


              )

            ,

          )

        ],
      ),
    );

}

Widget serachView(){
  return Row(
    children: [
      Container(
        height: 40.h,
        width: 280.w,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: AppColors.primaryFourElementText,
          ),
          borderRadius: BorderRadius.circular(15.h)
        ),
        child: Row(
          children: [
            Container(
              height: 16.w,
              width: 16.w,
              child: Icon(Icons.search),
            ),
            Container(
              width: 240.w,
              // height: 40.h,
              child:  TextField(
                onChanged: (va){
                },
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 15),
                    helperText: "Search your course",
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
                // obscureText: textType=="password"?true:false,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 8.sp,

                ),
              ),
            )

          ],
        ),
      ),
      SizedBox(
        width: 3,
      ),
      Container(
        height: 40.h,
        width:15.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.h),
          color: AppColors.primaryElement,
          border: Border.all(
            color: AppColors.primaryElement
          )
        ),
      )
    ],
  );

}

Widget sliderView(BuildContext
     context, MainHomePageState state){
  return Column(
    children: [
      Container(
        height: 160.h,
        width: 725.w,
        margin: EdgeInsets.only(top: 20.h),
        child: PageView(
          onPageChanged: (index){
            context.read<MainHomePageBloc>().add(HomePageDots(index));
          },
          children: [
            _sliderViewContainer(path: "https://static.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg"),
            _sliderViewContainer(path: "https://th.bing.com/th/id/OIP.nBBABfTYuzj2DrsaqZ7pJgAAAA?pid=ImgDet&w=182&h=182&c=7&dpr=1.3"),
            _sliderViewContainer(path: "https://th.bing.com/th/id/OIP.nBBABfTYuzj2DrsaqZ7pJgAAAA?pid=ImgDet&w=182&h=182&c=7&dpr=1.3")

          ],


        ),
      ),
      Container(
        child: DotsIndicator(
          dotsCount: 3,position: state.index,
           decorator:DotsDecorator(
             color: Colors.grey,
             activeColor: AppColors.primaryElement,
             size: Size.square(5),
             activeSize: Size(17,5),
             activeShape: RoundedRectangleBorder(
               borderRadius: BorderRadius.all(Radius.circular(15))
             )
           ) ,
        ),
      )
    ],
  );
}
Widget _sliderViewContainer({String path="https://static.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg"}){

return Container(
height: 160.h,
width: 725.w,
decoration: BoxDecoration(
  // borderRadius: BorderRadius.all(Radius.circular(20.h)),
image:  DecorationImage(
  fit: BoxFit.fill,
image: NetworkImage(path,)
)
),
);
}
Widget menuView(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 325.w,
        margin: EdgeInsets.only(
          top: 15.h
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _reUsableSubTitleText("Choose Your course"),
            _reUsableSubTitleText("See All",clr: AppColors.primaryThreeElementText,fontSize: 10),




          ],
        ),
       
      ),
     Container(
       child: Row(
         children: [
           _reUSableMenuText("All"),
           SizedBox(width: 5.w,),
           _reUSableMenuText("Popular",bagroundClr:Colors.white ,textColor: Colors.grey.withOpacity(.6)),
           SizedBox(width: 5.w,),
           _reUSableMenuText("Newest",bagroundClr:Colors.white ,textColor: Colors.grey.withOpacity(.6)),
         ],
       ),
     )
    ],
  );
}
Widget _reUsableSubTitleText(String text,{ Color clr=AppColors.primaryText,double fontSize=16}){
  return      Container(
      child: Text(text,style: TextStyle(
      color: clr,
      fontWeight: FontWeight.bold,
      fontSize: fontSize.sp
  ),));


}
Widget _reUSableMenuText(
    String text,{Color textColor=Colors.white,Color bagroundClr=AppColors.primaryElement}
    ){
  return Container(
    decoration: BoxDecoration(
        color: bagroundClr,
        borderRadius: BorderRadius.circular(7.w),border: Border.all(color:bagroundClr)
    ),

    child: _reUsableSubTitleText(text,clr: textColor,),
    padding: EdgeInsets.only(left: 8.w,right: 8.w,top: 5.h,bottom: 5.h),
  );
}


Widget gridViewDesign(CourseModel model){
  return  Container(
    padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 12.h),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.w),
        image: DecorationImage(image: NetworkImage("https://th.bing.com/th?id=OIP.IOGGKcmJMYKPkMuimQDLnwHaHv&w=244&h=255&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",),fit: BoxFit.fill)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(model.code??"",maxLines: 1,
              overflow: TextOverflow.fade,
              softWrap: false,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        ),   Container(
          child: Text(model?.name??"",maxLines: 1,
              overflow: TextOverflow.fade,
              softWrap: false,
              textAlign: TextAlign.left,

              style: TextStyle(color: AppColors.primaryFourElementText,fontWeight: FontWeight.normal)),
        )
      ],
    ),
  );
}