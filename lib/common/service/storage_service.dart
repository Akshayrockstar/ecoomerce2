import 'dart:convert';

import 'package:eccommerce2/common/entities/user.dart';
import 'package:eccommerce2/common/values/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageServices{
  late final SharedPreferences _prefd;
  Future<StorageServices> init() async {
    _prefd=await SharedPreferences.getInstance();
    return this;
  }
  Future<bool> setBool(String key ,bool value) async{
    return await _prefd.setBool(key, value);
  }
  Future<bool> setString(String key ,String value) async{
    return await _prefd.setString(key, value);
  }
bool getDeviceFirstOpen(){
return    _prefd.getBool(AppConstants.torage_device_open_firsttime)??false;
}bool getisLogidIn(){
return    _prefd.getString(AppConstants.USER_LOGINED)==null?false:true;
}
 Future<bool> remove(String key){
return   _prefd.remove(key);
}
getUserToken(){

    return _prefd.getString(AppConstants.STORAGE_USER_TOKEN)??"";
}
getUserProfile(){
    var profileOffline=_prefd.getString(AppConstants.STORAGE_USER_PROFILE_KEY);
    if(profileOffline?.isNotEmpty==true){
      return      UserData.fromJson(jsonDecode(profileOffline!));


    }
    return UserData();

}
}