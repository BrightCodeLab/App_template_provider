// ignore_for_file: use_key_in_widget_constructors

import 'package:app_template/core/constant/text_style.dart';
import 'package:app_template/ui/screens/auth/forgot_password/forgot_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgotPasswordViewModel(),
      child: Consumer<ForgotPasswordViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text(
                "Forgot Password Screen",
                style: style16B,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
