import 'package:eccommerce2/common/utils/http_utils.dart';

import '../entities/user.dart';

class CourseApi{
  static Future<List<CourseModel>> getCourseList() async {
    var response=await HttpUtil().post("https://api-uat-inventory.sidrabazar.com/inventory-product/list-variants-by-inventory-id/SBNU1012");

print("response......${response.data['data']['results'] as List}");
return List<CourseModel>.from((response.data['data']['results'] as List).map((element) => CourseModel.fromJson(element)));
  }
}