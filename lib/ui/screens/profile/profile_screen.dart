// ignore_for_file: use_key_in_widget_constructors

import 'package:app_template/core/constant/text_style.dart';
import 'package:app_template/ui/screens/profile/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileViewModel(),
      child: Consumer<ProfileViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text(
                "Profile Screen",
                style: style16B,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
