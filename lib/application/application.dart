import 'package:eccommerce2/common/values/colors.dart';
import 'package:flutter/material.dart';

import 'application_widget/application_widgets.dart';

class ApplicationDartFile extends StatefulWidget {
  const ApplicationDartFile({Key? key}) : super(key: key);

  @override
  State<ApplicationDartFile> createState() => _ApplicationDartFileState();
}

class _ApplicationDartFileState extends State<ApplicationDartFile> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: buildPage(_currentIndex),
          bottomNavigationBar:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.3),
                  spreadRadius: 1,
                blurRadius: 1)
              ]
            ),
            child: BottomNavigationBar(
              elevation: 0,
              type:BottomNavigationBarType.fixed,
              currentIndex:_currentIndex,
              onTap:(val){
               setState(() {
                 _currentIndex=val;

               });


              },
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: AppColors.primaryElement,
                unselectedItemColor: AppColors.primaryFourElementText,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home,),label: "home"),
                  BottomNavigationBarItem(icon: Icon(Icons.search,),label: "search"),
                  BottomNavigationBarItem(icon: Icon(Icons.delete, ),label: "home"),
                  BottomNavigationBarItem(icon: Icon(Icons.home,),label: "home"),
                  BottomNavigationBarItem(icon: Icon(Icons.home,),label: "home"),

            ]),
          ) ,

        ),
      ),

    );
  }
}
