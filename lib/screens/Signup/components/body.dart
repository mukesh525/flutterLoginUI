import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluuter_ui_login/components/RoundedButton.dart';
import 'package:fluuter_ui_login/components/already_have_an_account_check.dart';
import 'package:fluuter_ui_login/components/rounded_input_field.dart';
import 'package:fluuter_ui_login/components/rounded_password_filed.dart';
import 'package:fluuter_ui_login/constants.dart';
import 'package:fluuter_ui_login/screens/Login/components/login_screen.dart';
import 'package:fluuter_ui_login/screens/Signup/components/background.dart';
import 'package:fluuter_ui_login/screens/Signup/components/small_icon.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Signup',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset('assets/icons/signup.svg',
              height: size.height * 0.35),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.02),
          RoundedPasswordField(
            hintText: "Password",
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.02),
          RoundedButton(
            text: "Signup",
            press: () {},
          ),
          AlreadyHaveAnAcccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ),
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: 'assets/icons/facebook.svg',
                press: () {},
              ),
              SocialIcon(
                iconSrc: 'assets/icons/google-plus.svg',
                press: () {},
              ),
              SocialIcon(
                iconSrc: 'assets/icons/twitter.svg',
                press: () {},
              ),
            ],
          )
        ],
      ),
    ));
  }
}
