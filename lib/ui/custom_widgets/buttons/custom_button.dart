import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function() onTap;
  final Color backgroundColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool isLoading;
  final BoxBorder? border;

  const CustomButton({
    super.key,
    required this.child,
    required this.onTap,
    this.backgroundColor = const Color(0xFFA1BB5A),
    this.width,
    this.borderRadius,
    this.height,
    this.isLoading = false,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !isLoading ? onTap : null,
      child: Container(
        width: width ?? MediaQuery.sizeOf(context).width,
        height: height ?? 48,
        margin: const EdgeInsets.symmetric(horizontal: 04),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius??0),
          border: border,
        ),
        alignment: Alignment.center,
        child: !isLoading
            ? child
            : CircularProgressIndicator(
          // color: AppColors().white,
        ),
      ),
    );
  }
}
