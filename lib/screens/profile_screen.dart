import 'package:flutter/material.dart';
import 'package:school_monk/common/textfield.dart';
import 'package:school_monk/model/req/edit_profile_req_model.dart';
import 'package:school_monk/repo/edit_profile_repo.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _mobile = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();
  final _dob = TextEditingController();
  final _zender = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: Icon(
          Icons.arrow_back,
          size: 28,
          color: Colors.black,
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Edit Profile",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
          SizedBox(
            width: 13,
          ),
          Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
          SizedBox(
            width: 13,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.grey,
          ),
          SizedBox(
            width: 13,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.3,
              width: double.infinity,
              color: Color(0xffF5F6F7),
              child: Stack(
                children: [
                  Positioned(
                    right: -250,
                    top: -150,
                    child: Image(
                      image: AssetImage("assets/images/edit_profile.png"),
                      height: 500,
                      width: 500,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 45,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.black87,
                      child: CircleAvatar(
                        radius: 68,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ),
                ],
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
                    Row(
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
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Date Of Birth',
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
                                controller: _dob,
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
                                  'Zender',
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
                                controller: _zender,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                          ],
                        ),
                      ],
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
                          'Address',
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
                      controller: _address,
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        size: 20,
                        color: Color(0xffF0C742),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  EditProfileReqModel _model = EditProfileReqModel();
                  _model.clientKey = "1595922666X5f1fd8bb5f662";
                  _model.deviceType = "MOB";
                  _model.userId = "109";
                  _model.fname = _firstName.text;
                  _model.lname = _lastName.text;
                  _model.dob = "1";
                  _model.gender = _zender.text;

                  EditProfileRepo.editProfileRepo(
                    reqBody: _model.toJson(),
                  ).then(
                    (value) {
                      return ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Profile Edited Successfully "),
                        ),
                      );
                    },
                  );
                }
              },
              child: Container(
                height: screenSize.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: const Color(0xfff0c742),
                  border:
                      Border.all(width: 2.0, color: const Color(0xfff0c742)),
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
                    'SAVE UPDATE',
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
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
