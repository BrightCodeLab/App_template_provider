import 'package:app_template/core/constant/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  String? title;
  CustomBackButton(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.back_button,
          width: 24,
          height: 24,
        ),
        Text(
          "$title",
          style: const TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
