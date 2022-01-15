import 'package:flutter/material.dart';
import 'package:flutter_starter/viewmodels/login.viewmodel.dart';
import 'package:flutter_starter/views/base.view.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, model, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(),
          ),
        );
      },
    );
  }
}
