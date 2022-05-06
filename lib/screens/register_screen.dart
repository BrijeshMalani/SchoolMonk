import 'package:flutter/material.dart';
import 'package:school_monk/common/textfield.dart';
import 'package:school_monk/model/req/register_req_model.dart';
import 'package:school_monk/repo/register_repo.dart';
import 'package:school_monk/screens/home_screen.dart';
import 'package:school_monk/sharedpreference_services/shared_prefs_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();
  bool icon = false;

  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _mobile = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          if (_formKey.currentState!.validate()) {
            SharedPrefManager.setUserName(userName: _mobile.text);

            SignUpReqModel _model = SignUpReqModel();

            _model.clientKey = "1595922666X5f1fd8bb5f662";
            _model.deviceType = "MOB";
            _model.fname = _firstName.text;
            _model.lname = _lastName.text;
            _model.email = _email.text;
            _model.mobile = _mobile.text;
            _model.dob = "1";
            _model.password = _password.text;
            _model.confirmPassword = _confirmPass.text;

            PostUserInfo.postUserInfo(
              reqBody: _model.toJson(),
            ).then(
              (value) {
                return _isChecked == true
                    ? ScaffoldMessenger.of(context)
                        .showSnackBar(
                          SnackBar(
                            content: Text("Successfully Registered"),
                          ),
                        )
                        .closed
                        .then(
                          (value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          ),
                        )
                    : ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text("Please Agree the Terms and Conditions"),
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
              'REGISTER',
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Register",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenSize.height / 4.3,
              width: screenSize.width,
              decoration: BoxDecoration(
                color: Color(0xffF5F6F7),
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage("assets/images/background1.png"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'First Name',
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
                              Container(
                                height: 45,
                                width: 168,
                                child: CommonTextField(
                                  keyboardType: TextInputType.name,
                                  controller: _firstName,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Last Name',
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
                              Container(
                                height: 45,
                                width: 168,
                                child: CommonTextField(
                                  keyboardType: TextInputType.name,
                                  controller: _lastName,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile Number',
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
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      controller: _mobile,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
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
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Password(Minimum 8 Characters)',
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
                      controller: _password,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm Password(Minimum 8 Characters)',
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
                      controller: _confirmPass,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    activeColor: Color(0xffF0C742),
                    value: _isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 12,
                          color: const Color(0xff8e8e8e),
                        ),
                        children: [
                          TextSpan(
                            text: 'I agree to the ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'TERMS & CONDITION',
                            style: TextStyle(
                              color: const Color(0xfff0c742),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: 'PRIVACY POLICY',
                            style: TextStyle(
                              color: const Color(0xfff0c742),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// model banavva mate///
//  {
//   'client_key': '1595922666X5f1fd8bb5f662',
//   'device_type': 'MOB',
//   'fname': 'MaD',
//   'lname': 'X',
//   'email': 'mayu@gmail.com',
//   'mobile': '7875695980',
//   'dob': '1'
// }
