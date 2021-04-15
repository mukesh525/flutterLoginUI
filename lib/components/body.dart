import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluuter_ui_login/components/background.dart';
import 'package:fluuter_ui_login/constants.dart';
import 'package:fluuter_ui_login/screens/Login/components/login_screen.dart';
import 'package:fluuter_ui_login/screens/Signup/components/signup_screen.dart';

import 'RoundedButton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //gives height of the screen
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to Edu',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: 'Login',
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
          RoundedButton(
            text: 'Signup',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Signup();
                  },
                ),
              );
            },
            color: kPrimaryLightColor,
            textColor: Colors.black,
          )
        ],
      ),
    ));
  }
}
