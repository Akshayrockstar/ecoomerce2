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