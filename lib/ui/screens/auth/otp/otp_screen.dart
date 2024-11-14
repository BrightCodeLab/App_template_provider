// ignore_for_file: use_key_in_widget_constructors

import 'package:app_template/core/constant/text_style.dart';
import 'package:app_template/ui/screens/auth/otp/otp_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OTPViewModel(),
      child: Consumer<OTPViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text(
                "OTP Screen",
                style: style16B,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
