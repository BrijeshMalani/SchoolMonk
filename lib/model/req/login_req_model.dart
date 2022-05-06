class LoginReqModel {
  String? clientKey;
  String? deviceType;
  String? email;
  String? password;

  LoginReqModel({this.clientKey, this.deviceType, this.email, this.password});

  LoginReqModel.fromJson(Map<String, dynamic> json) {
    clientKey = json['client_key'];
    deviceType = json['device_type'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['client_key'] = this.clientKey;
    data['device_type'] = this.deviceType;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
