import 'package:dio/dio.dart';
import 'package:eccommerce2/common/values/constants.dart';
import 'package:eccommerce2/pages/global.dart';

class  HttpUtil{
  static final HttpUtil _instance=HttpUtil._internl();
  factory HttpUtil(){
    return _instance;
  }
   Dio dio=Dio();

  HttpUtil._internl(){
    BaseOptions options=BaseOptions(
      baseUrl: "https://onlinetool.in/",
      connectTimeout: Duration(seconds: 1),
      receiveTimeout: Duration(seconds: 1),
      contentType: "application/json: charset=utf-8",
      responseType: ResponseType.json
    );
    // dio=Dio(options);

  }
  Map<String,dynamic>getAuthorizarionHeadre(){
    var headers=<String,dynamic>{};
    String accessToken=Global.storageServices.getUserToken();
    print("accessToken$accessToken");
    if(accessToken.isNotEmpty){
      headers['Authorization']="$accessToken";
      return headers;
    }

    print("http$headers");
    return headers;

  }

  Future post( String path,{dynamic data,Map<String ,dynamic>? queryParameters,Options? options}) async {

    Options reQuestOptions=options??Options();
    reQuestOptions.headers=reQuestOptions.headers??{};

    Map<String,dynamic>authorization=getAuthorizarionHeadre();
    print("SSSSSSSSSSSSSSSSSSSS$path");
    if(authorization!=null){
      reQuestOptions.headers!.addAll(authorization);
    }

    print("SSSSSSSSSSSSSSSSSSSS$path");
    try {
      var response= await dio.get(path,queryParameters: queryParameters,data: {
        "email": "team7@sidrabusiness.com",
        "password": "team7@2024",
        "code": "EMPY231"
      },options: reQuestOptions);
      print("dddddddddd$response");
      return response;

    } catch (e) {
      print('Error: $e');
    }


  }
}