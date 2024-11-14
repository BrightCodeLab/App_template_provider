// ignore_for_file: use_key_in_widget_constructors

import 'package:app_template/core/constant/text_style.dart';
import 'package:app_template/ui/screens/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text(
                "Home Screen",
                style: style16B,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
