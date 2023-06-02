import 'package:booking_app/config/config.dart';
import 'package:booking_app/presentation/widget/widget.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: AppFont.h3,
          ),
          16.0.height,
          AppInputText(
            label: "Login",
            controller: TextEditingController(),
          ),
          16.0.height,
          AppInputText(
            label: "Password",
            controller: TextEditingController(),
          ),
          16.0.height,
          PrimaryButton(
            text: "Login",
            onPressed: () {},
            width: double.infinity,
            type: PrimaryButtonType.type3,
          )
        ],
      ),
    );
  }
}
