class EditProfileReqModel {
  String? clientKey;
  String? deviceType;
  String? userId;
  String? fname;
  String? lname;
  String? dob;
  String? gender;

  EditProfileReqModel(
      {this.clientKey,
      this.deviceType,
      this.userId,
      this.fname,
      this.lname,
      this.dob,
      this.gender});

  EditProfileReqModel.fromJson(Map<String, dynamic> json) {
    clientKey = json['client_key'];
    deviceType = json['device_type'];
    userId = json['user_id'];
    fname = json['fname'];
    lname = json['lname'];
    dob = json['dob'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['client_key'] = this.clientKey;
    data['device_type'] = this.deviceType;
    data['user_id'] = this.userId;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    return data;
  }
}
