import 'package:eccommerce2/common/entities/user.dart';
import 'package:eccommerce2/common/utils/http_utils.dart';

class UserApi{
 static login({LoginRequestEntity? params})async{
    var response=await HttpUtil().post(
      'api/login/',queryParameters:params?.toJson()
    );
    print("response$response");
    return response;
  }
}