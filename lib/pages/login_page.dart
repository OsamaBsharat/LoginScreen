import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_app_ui/widgets/rounded_circular_button.dart';
import 'package:login_app_ui/widgets/rounded_text_for_form_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [
        _header(context),
        _LoginForm(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      color: const Color.fromRGBO(230, 253, 253, 1.0),
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/illustration.png",
            width: MediaQuery.of(context).size.width * 0.45,
            fit: BoxFit.fill,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Text(
              "تسجيل الدخول",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }

  Widget _LoginForm(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.75,
      child: Form(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _formFields(context),
            _bottomButtuns(context),
          ],
        ),
      )),
    );
  }

  Widget _formFields(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RoundedTextFormField(
            prefixIcon: (Icons.email_outlined),
            hintText: "البريد الالكتروني",
          ),
          RoundedTextFormField(
            prefixIcon: (Icons.lock_outlined),
            hintText: "كلمة المرور",
            obsecureText: true,
          ),
          Text(
            "! نسيت كلمة المرور",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomButtuns(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.80,
          height: MediaQuery.of(context).size.height * 0.06,
          child: const RoundedCircularButton(text: "تسجيل الدخول"),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 30,
          ),
          child: Text(
            "! لا تمتلك حساباً ، انشئ حساب",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
