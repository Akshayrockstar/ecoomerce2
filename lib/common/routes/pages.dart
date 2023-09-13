import 'package:eccommerce2/application/application.dart';

import 'package:eccommerce2/main.dart';
import 'package:eccommerce2/pages/registeration/bloc/register_bloc.dart';
import 'package:eccommerce2/pages/registeration/register_page.dart';
import 'package:eccommerce2/pages/signin/bloc/sign_in_bloc.dart';
import 'package:eccommerce2/pages/signin/signin%20_page.dart';
import 'package:eccommerce2/pages/welcome/bloc/bloc.dart';
import 'package:eccommerce2/pages/welcome/welomepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'names.dart';

class Pages{
  static List<PageEntity>routs=[
    PageEntity(page:WelocomePage() , bloc:   BlocProvider(create: (context) => WelcomePagebloc(),), route: Approutes.iniitial),
    PageEntity(page:ApplicationDartFile() , route: Approutes.application),
    PageEntity(page:SigninPage() , bloc:   BlocProvider(create: (context) => SignInBloc(),), route: Approutes.signin),
    PageEntity(page:RegisterPage() , bloc:   BlocProvider(create: (context) => RegisterBloc(),), route: Approutes.signup)

  ];
  //return all the bloc providers
  static List<dynamic> allProviders(BuildContext context){
    List<dynamic>blocProviders=[];
    for(var bloc in routs){
      blocProviders.add(bloc.bloc);

    }
    return blocProviders;
  }
  static MaterialPageRoute generateRouteSettings(RouteSettings settings){
    if(settings.name!=null){
      //check for route name  when navigator get triggered
      var result=routs.where((element) => element.route==settings.name);
      if(result.isNotEmpty){
        return MaterialPageRoute(builder: (_)=>result.first.page,settings: settings);
      }

    }
    return MaterialPageRoute(builder: (_)=>SigninPage(),settings: settings);
  }

}
class PageEntity{
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({required this.page, this.bloc, required this.route});
}