import 'package:dio/dio.dart';

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

  Future post( String path,{dynamic data,Map<String ,dynamic>? queryParameters,}) async {
    print("SSSSSSSSSSSSSSSSSSSS$path");
    try {
      var response= await dio.post("https://api-uat-user.sidrabazar.com/user-employee_employeeuserorglogin/sidracart",queryParameters: queryParameters,data: {
        "email": "team7@sidrabusiness.com",
        "password": "team7@2024",
        "code": "EMPY231"
      });
      print("dddddddddd$response");
      return response;

    } catch (e) {
      print('Error: $e');
    }


  }
}