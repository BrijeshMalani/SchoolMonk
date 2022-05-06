import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:school_monk/common/textfield.dart';
import 'package:school_monk/model/req/send_otp_req_model.dart';
import 'package:school_monk/model/req/verify_otp_req_model.dart';
import 'package:school_monk/repo/get_otp_repo.dart';
import 'package:school_monk/repo/verify_otp_repo.dart';
import 'package:school_monk/screens/bottom_bar_screens.dart';
import 'package:school_monk/sharedpreference_services/shared_prefs_service.dart';

class VerifyOtp extends StatefulWidget {
  final String number;
  const VerifyOtp({Key? key, required this.number}) : super(key: key);

  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _mobile =
      TextEditingController(text: widget.number);
  final _otp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          if (_formKey.currentState!.validate()) {
            SharedPrefManager.setUserName(
                userName: _mobile.text);
            VerifyOtpReqModel _model = VerifyOtpReqModel();
            _model.clientKey = "1595922666X5f1fd8bb5f662";
            _model.deviceType = "MOB";
            _model.userId = "109";
            _model.mobile = _mobile.text;
            _model.otp = _otp.text;

            VerifyOtpRepo.verifyOtpRepo(
              reqBody: _model.toJson(),
            ).then(
              (value) {
                return ScaffoldMessenger.of(context)
                    .showSnackBar(
                      SnackBar(
                        content: Text("Otp Verified"),
                      ),
                    )
                    .closed
                    .then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavScreen(),
                        ),
                      ),
                    );
              },
            );
          }
        },
        child: Container(
          height: screenSize.height * 0.0555,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: const Color(0xfff0c742),
            border: Border.all(width: 2.0, color: const Color(0xfff0c742)),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'VERIFY OTP',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          padding: new EdgeInsets.all(0.0),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenSize.height / 1.999,
              width: 500,
              color: Color(0xffF5F6F7),
              child: Stack(
                children: [
                  Positioned(
                    left: -240,
                    top: -150,
                    child: Image(
                      image: AssetImage("assets/images/background2.png"),
                      fit: BoxFit.fill,
                      height: 700,
                      width: 700,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 70,
                    child: Image(
                      image: AssetImage("assets/images/store.png"),
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 310,
                    child: Text(
                      "SkoolMonk",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile Number Verification',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 14,
                              color: const Color(0xff8e8e8e),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CommonTextField(
                        controller: _mobile,
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            SendOtpReqModel _model = SendOtpReqModel();
                            _model.clientKey = "1595922666X5f1fd8bb5f662";
                            _model.deviceType = "MOB";
                            _model.userId = "109";
                            _model.mobile = _mobile.text;

                            GetOtpRepo.getOtpRepo(
                              reqBody: _model.toJson(),
                            ).then(
                              (value) {
                                return ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                  SnackBar(
                                    content: Text("OTP Sent"),
                                  ),
                                );
                              },
                            );
                          }
                        },
                        child: Container(
                          height: screenSize.height * 0.0555,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color(0xfff0c742),
                            border: Border.all(
                                width: 2.0, color: const Color(0xfff0c742)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'GET OTP',
                              style: TextStyle(
                                fontFamily: 'Helvetica Neue',
                                fontSize: 14,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      OtpTextField(
                        numberOfFields: 4,
                        borderColor: Colors.black,
                        showFieldAsBox: true,
                        borderRadius: BorderRadius.circular(5),
                        onSubmit: (value) {
                          _otp.text = value;
                        }, // end onSubmit
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
