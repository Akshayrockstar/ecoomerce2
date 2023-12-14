import 'package:dots_indicator/dots_indicator.dart';
import 'package:eccommerce2/common/values/colors.dart';
import 'package:flutter/material.dart';
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

Widget sliderView(){
  return Column(
    children: [
      Container(
        height: 160.h,
        width: 725.w,
        margin: EdgeInsets.only(top: 20.h),
        child: PageView(
          children: [
            _sliderViewContainer(path: "https://static.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg"),
            _sliderViewContainer(path: "https://th.bing.com/th/id/OIP.nBBABfTYuzj2DrsaqZ7pJgAAAA?pid=ImgDet&w=182&h=182&c=7&dpr=1.3"),
            _sliderViewContainer(path: "https://th.bing.com/th/id/OIP.nBBABfTYuzj2DrsaqZ7pJgAAAA?pid=ImgDet&w=182&h=182&c=7&dpr=1.3")

          ],


        ),
      ),
      Container(
        child: DotsIndicator(
          dotsCount: 3,position: 0,
           decorator:DotsDecorator(
             color: AppColors.primaryElementText,
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