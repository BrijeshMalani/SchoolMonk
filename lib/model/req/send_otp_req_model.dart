class SendOtpReqModel {
  String? clientKey;
  String? deviceType;
  String? mobile;
  String? userId;

  SendOtpReqModel({this.clientKey, this.deviceType, this.mobile, this.userId});

  SendOtpReqModel.fromJson(Map<String, dynamic> json) {
    clientKey = json['client_key'];
    deviceType = json['device_type'];
    mobile = json['mobile'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['client_key'] = this.clientKey;
    data['device_type'] = this.deviceType;
    data['mobile'] = this.mobile;
    data['user_id'] = this.userId;
    return data;
  }
}
