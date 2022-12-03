import 'package:flutter/material.dart';
import 'package:ui_app/src/screens/login/widgets/login_form.dart';
import 'package:ui_app/src/screens/login/widgets/register_link.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = './login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 33),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Create your account'),
                  SizedBox(height: 8),
                  Text('Lorem ipsum dolor sit amet'),
                  SizedBox(height: 62),
                  LoginForm(),
                  SizedBox(height: 63),
                  RegisterLink(),
                ],
              ),
            ),
          ),
        ));
  }
}
