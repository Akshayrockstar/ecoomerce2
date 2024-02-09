import 'package:eccommerce2/common/entities/user.dart';
import 'package:eccommerce2/common/utils/http_utils.dart';

class UserApi{
 static login({LoginRequestEntity? params})async{
    var response=await HttpUtil().post(
      'https://api-uat-user.sidrabazar.com/user-employee_employeeuserorglogin/sidracart',queryParameters:params?.toJson()
    );
    print("response$response");
    return response;
  }
}