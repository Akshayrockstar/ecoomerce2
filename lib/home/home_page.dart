import 'package:eccommerce2/common/values/colors.dart';
import 'package:eccommerce2/home/bloc/main_home_page_bloc.dart';
import 'package:eccommerce2/home/home_controller.dart';
import 'package:eccommerce2/home/widgets/home_page_widegts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController _homeController;
  @override
  void initState() {

    _homeController=HomeController(context: context);
    _homeController.intit();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAppBAr(),
        BlocBuilder<MainHomePageBloc, MainHomePageState>(
          builder: (context, state) {
            return Expanded(
              child: Container(
                // height: MediaQuery.of(context).size.height-150,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 11),
                child: CustomScrollView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  slivers: [
                    SliverToBoxAdapter(
                      child: AnimatedContainer(
                        margin: EdgeInsets.only(top: 20.h),
                        height: 120,
                        color: Colors.red,
                        duration: Duration(seconds: 2),
                        child: Text("HELLO", style: TextStyle(
                            color: AppColors.primaryThreeElementText,
                            fontSize: 14.sp
                        ),),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        margin: EdgeInsets.only(top: 1.h),
                        child: Text(_homeController.userProfile?.name??"", style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 14.sp
                        ),),
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                      ),
                    ),
                    SliverToBoxAdapter(child: serachView()),
                    SliverToBoxAdapter(child: sliderView(context,state)),
                    SliverToBoxAdapter(child: menuView()),
                    SliverPadding(padding: EdgeInsets.symmetric(horizontal: 0,vertical: 15.h),sliver:SliverGrid(
                      delegate:SliverChildBuilderDelegate((context, index) => GestureDetector(
                        onTap: (){

                        },
                        child:
                        gridViewDesign(state.courseList[index])
                      ),childCount: state.courseList.length) ,

                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 5.w,
                        mainAxisSpacing: 15.h,
                        childAspectRatio: 2.6,
                        // mainAxisExtent: 200,
                        crossAxisCount: 2,

                      ),
                    ) ,)
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
