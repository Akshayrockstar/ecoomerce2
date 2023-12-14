import 'package:eccommerce2/common/service/storage_service.dart';
import 'package:eccommerce2/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

class Global{
  static late StorageServices storageServices;

  static Future init() async{
    WidgetsFlutterBinding.ensureInitialized();
    storageServices=await StorageServices().init();
    // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: Constants.apiKey,
          appId: Constants.appId,
          messagingSenderId: Constants.messagingSenderId,
          projectId: Constants.projectId),

    );
  }



}