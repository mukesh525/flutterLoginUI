import 'package:flutter/material.dart';
import 'package:fluuter_ui_login/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    this.hintText,
    this.icon = Icons.lock,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
            obscureText: true,
            onChanged: onChanged,
            decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                icon: Icon(
                  icon,
                  color: kPrimaryColor,
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: kPrimaryColor,
                ))));
  }
}
