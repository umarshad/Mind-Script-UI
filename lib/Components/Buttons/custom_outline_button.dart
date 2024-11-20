import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';

class CustomOutlineButton extends StatelessWidget {
  final String imgPath;
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final double borderRadius;

  const CustomOutlineButton({
    super.key,
    required this.imgPath,
    required this.text,
    required this.onPressed,
    required this.textStyle,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        side: WidgetStateProperty.all(
          BorderSide(color: AppColors().purpleColor, width: 1.5.w),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
        ),
        foregroundColor: WidgetStateProperty.all(AppColors().purpleColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            imgPath,
            height: 24.h,
            width: 24.w,
          ),
          SizedBox(width: 8.w),
          Text(text, style: textStyle),
        ],
      ),
    );
  }
}
