import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  TextEditingController? controller;
  String? hint;
  Widget? suffixIcon;

  dynamic keyboardType;
  dynamic maxLength;
  dynamic textInputAction;

  CommonTextField(
      {this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.hint,
      this.maxLength,
      this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        cursorColor: Color(0xffF0C742),
        textInputAction: textInputAction,
        validator: (value) {
          if (value!.isEmpty) {
            return '* required';
          } else {
            return null;
          }
        },
        controller: controller,
        keyboardType: keyboardType,
        maxLength: maxLength,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.only(bottom: 5, left: 10),
          counterText: "",
          hintText: hint,
          fillColor: Colors.white,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF0C742)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffF0C742),
            ),
          ),
          labelStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
