import 'package:booking_app/presentation/pages/login/component/login_footer.dart';
import 'package:booking_app/presentation/pages/login/component/login_form.dart';
import 'package:booking_app/presentation/pages/login/component/login_image.dart';
import 'package:booking_app/presentation/pages/login/login_cubit.dart';
import 'package:booking_app/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext contex) => LoginCubit(),
      child: Builder(
        builder: (context) => _buildPage(context),
      ),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: Column(
          children: [
            60.0.height,
            LoginImage(),
            48.0.height,
            LoginForm(),
            16.0.height,
            LoginFooter(),
          ],
        )));
  }
}
