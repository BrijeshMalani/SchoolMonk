import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_monk/screens/signIn_screen.dart';
import 'package:school_monk/sharedpreference_services/shared_prefs_service.dart';

import 'bottom_bar_screens.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? userEmail;

  Future getUserEmail() async {
    String? user = await SharedPrefManager.getUserName();

    setState(() {
      userEmail = user;
    });
  }

  @override
  void initState() {
    getUserEmail().whenComplete(() async {
      Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  userEmail == null ? SignInScreen() : BottomNavScreen(),
            )),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffF0C742),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/shop_logo.svg"),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Stationery Shop",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
