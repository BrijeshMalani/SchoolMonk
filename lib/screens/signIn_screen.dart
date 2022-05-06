import 'package:flutter/material.dart';

import 'package:school_monk/common/textfield.dart';
import 'package:school_monk/model/req/login_req_model.dart';
import 'package:school_monk/repo/signin_repo.dart';
import 'package:school_monk/screens/register_screen.dart';
import 'package:school_monk/screens/verfy_otp.dart';
import 'package:school_monk/sharedpreference_services/shared_prefs_service.dart';

import 'home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  final _mobile = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          if (_formKey.currentState!.validate()) {
            LoginReqModel _model = LoginReqModel();
            _model.clientKey = "1595922666X5f1fd8bb5f662";
            _model.deviceType = "MOB";
            _model.email = _mobile.text;
            _model.password = _password.text;

            SignInRepo.signInRepo(
              reqBody: _model.toJson(),
            ).then(
              (value) {
                return ScaffoldMessenger.of(context)
                    .showSnackBar(
                      SnackBar(
                        content: Text("Successfully SignIn"),
                      ),
                    )
                    .closed
                    .then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyOtp(
                            number: _mobile.text,
                          ),
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
              'SIGN IN',
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
      backgroundColor: Color(0xffF5F6F7),
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
              height: screenSize.height / 1.888,
              width: 500,
              color: Color(0xffF5F6F7),
              child: Stack(
                children: [
                  Positioned(
                    left: -240,
                    top: -80,
                    child: Image(
                      image: AssetImage("assets/images/background.png"),
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
                  Positioned(
                    top: screenSize.height * 0.46,
                    width: screenSize.width / 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: screenSize.height * 0.0555,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: const Color(0xffffffff),
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
                            'REGISTER',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 14,
                              color: const Color(0xfff0c742),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              'OR',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
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
                      Column(
                        children: [
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Enter your phone number',
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
                            height: 10,
                          ),
                          CommonTextField(
                            controller: _mobile,
                            maxLength: 10,
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Enter your password',
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
                            height: 10,
                          ),
                          CommonTextField(
                            controller: _password,
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              size: 20,
                              color: Color(0xffF0C742),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Password ?',
                                style: TextStyle(
                                  fontFamily: 'Helvetica Neue',
                                  fontSize: 14,
                                  color: const Color(0xfff0c742),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
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
