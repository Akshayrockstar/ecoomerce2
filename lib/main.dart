import 'package:eccommerce2/blocs/blocs.dart';
import 'package:eccommerce2/pages/signin/signin%20_page.dart';
import 'package:eccommerce2/pages/welcome/bloc/bloc.dart';
import 'package:eccommerce2/pages/welcome/welomepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'blocs/events.dart';
import 'blocs/state.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => WelcomePagebloc(),


    ),
    BlocProvider(
      create: (context) => AppBloc(),
    ),
  ],
  child: ScreenUtilInit(
        builder: (context,child){
          return  MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            routes: {
              "myHomePage":(context)=>MyHomePage(),
              "signIn":(context)=>SigninPage(),

            },
            home: WelocomePage(


            ),
          );
        },
      ),
);
  }
}

class MyHomePage extends StatelessWidget {


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(

          title: Text("title"),
        ),
        body: Center(
      
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<AppBloc, AppState>(
                builder: (context, state) {
                  return Text(
                    '${BlocProvider.of<AppBloc>(context).state.counter}',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium,
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              heroTag: "hero tag1",
              onPressed:(){BlocProvider.of<AppBloc>(context).add(incrementEvent());},
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            Spacer(),
            FloatingActionButton(
              heroTag: "hero tag2",
              onPressed:(){
                BlocProvider.of<AppBloc>(context).add(decrememtEvent());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
