import 'package:flutter/material.dart';
import 'package:school_monk/repo/edit_profile_repo.dart';
import 'package:school_monk/screens/bottom_bar_screens.dart';
import 'package:school_monk/screens/profile_screen.dart';
import 'package:school_monk/screens/register_screen.dart';
import 'package:school_monk/screens/show_school.dart';
import 'package:school_monk/screens/signIn_screen.dart';
import 'package:school_monk/screens/splash_screen.dart';
import 'package:school_monk/screens/verfy_otp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: SignInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
