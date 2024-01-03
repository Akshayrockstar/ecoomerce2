import 'package:eccommerce2/application/bloc/application_bloc.dart';
import 'package:eccommerce2/blocs/blocs.dart';
import 'package:eccommerce2/common/routes/names.dart';
import 'package:eccommerce2/common/values/constants.dart';
import 'package:eccommerce2/pages/global.dart';
import 'package:eccommerce2/pages/profile/setting/bloc/settings_bloc.dart';
import 'package:eccommerce2/pages/profile/setting/widgets/setting_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingPAge extends StatefulWidget {
  const SettingPAge({super.key});

  @override
  State<SettingPAge> createState() => _SettingPAgeState();
}

class _SettingPAgeState extends State<SettingPAge> {
  void userDetailRemove(){
    context.read<ApplicationBloc>().add(ApplicationTAbEVent(index: 0));
    Global.storageServices.remove(AppConstants.torage_device_open_firsttime);
    Navigator.pushNamedAndRemoveUntil(context, Approutes.signin, (route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: BlocBuilder<SettingsBloc, SettingsState>(
          builder: (context, state) {
            return Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      showDialog(context: context, builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            "Confirm"
                          ),
                          content:const Text("Confirm Logout"),
                            actions: [
                              TextButton(onPressed: (){
                                Navigator.of(context).pop();
                              },
                                  child:const  Text("Cancel")),  TextButton(onPressed: (){
                                userDetailRemove();
                              }, child:const  Text("Confirm")),
                            ],
                        );
                      },);
                    }
                    ,
                    child: Container(
                      height: 100.h,
                      child: Icon(Icons.logout_outlined),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
