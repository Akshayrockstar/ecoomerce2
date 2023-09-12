import 'package:eccommerce2/blocs/blocs.dart';
import 'package:eccommerce2/pages/registeration/bloc/register_bloc.dart';
import 'package:eccommerce2/pages/signin/bloc/sign_in_bloc.dart';
import 'package:eccommerce2/pages/welcome/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocProviders{
  static get appBlocProviders=>[
    BlocProvider(
      create: (context) => WelcomePagebloc(),
    ),
    BlocProvider(
      create: (context) => AppBloc(),
    ),BlocProvider(
      create: (context) => SignInBloc(),
    ),BlocProvider(
      create: (context) => RegisterBloc(),
    ),
  ];
}