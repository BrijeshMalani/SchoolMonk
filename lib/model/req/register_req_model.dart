class SignUpReqModel {
  String? clientKey;
  String? deviceType;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? dob;
  String? password;
  String? confirmPassword;

  SignUpReqModel(
      {this.clientKey,
      this.deviceType,
      this.fname,
      this.lname,
      this.email,
      this.mobile,
      this.dob,
      this.password,
      this.confirmPassword});

  SignUpReqModel.fromJson(Map<String, dynamic> json) {
    clientKey = json['client_key'];
    deviceType = json['device_type'];
    fname = json['fname'];
    lname = json['lname'];
    email = json['email'];
    mobile = json['mobile'];
    dob = json['dob'];
    password = json['password'];
    confirmPassword = json['confirm_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['client_key'] = this.clientKey;
    data['device_type'] = this.deviceType;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['dob'] = this.dob;
    data['password'] = this.password;
    data['confirm_password'] = this.confirmPassword;
    return data;
  }
}
