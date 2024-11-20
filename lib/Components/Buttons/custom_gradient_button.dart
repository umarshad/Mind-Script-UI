import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const CustomLoginButton(
      {super.key,
      required this.height,
      required this.width,
      required this.text,
      required this.textStyle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(05.r),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF5C54A4),
              Color(0xFF433A8D),
              Color(0xff32365D),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
