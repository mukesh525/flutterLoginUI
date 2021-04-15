import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluuter_ui_login/components/RoundedButton.dart';
import 'package:fluuter_ui_login/components/already_have_an_account_check.dart';
import 'package:fluuter_ui_login/components/rounded_input_field.dart';
import 'package:fluuter_ui_login/components/rounded_password_filed.dart';
import 'package:fluuter_ui_login/screens/Login/components/background.dart';
import 'package:fluuter_ui_login/screens/Signup/components/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //gives height of the screen

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
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
            RoundedButton(
              text: 'Login',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAcccountCheck(
              login: true,
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
            )
          ],
        ),
      ),
    );
  }
}
