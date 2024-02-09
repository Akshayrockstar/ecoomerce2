class LoginRequestEntity{
  int? type;
  String? username;
  String? password;
  String? email;
  String? phone;
  String? avatar;
  String? open_id;
  int? onlineId;
   LoginRequestEntity({this.type,this.username,this.password,this.email,this.phone,this.avatar,this.open_id,this.onlineId});


Map<String,dynamic> toJson()=>{};
}


class UserData{
  int? type;
  String? name;
  String? password;
  String? email;
  String? phone;
  String? avatar;
  String? open_id;
  String? token;
  int? onlineId;
  UserData({this.type,this.name,this.password,this.email,this.phone,this.token,this.avatar,this.open_id,this.onlineId});


 factory UserData. fromJson(Map<String, dynamic>json){
   return UserData(
     name: json["name"] as String,
     token: json["token"]

   );
 }
}class CourseModel{
  int? type;
  String? code;
  String? name;
  String? storLogo;

  CourseModel({this.type,this.code,this.name,this.storLogo});


 factory CourseModel. fromJson(Map<String, dynamic>json){
   return CourseModel(
     code: json["code"] as String,
     name: json["name"] as String,
     // storLogo: json["store_logo"] as String,



   );
 }
}