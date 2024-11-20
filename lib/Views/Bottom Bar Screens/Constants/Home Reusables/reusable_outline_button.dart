import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';

class ReusableOutlineButton extends StatelessWidget {
  final String imgPath;
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;
  final double borderRadius;

  const ReusableOutlineButton({
    super.key,
    required this.imgPath,
    required this.text,
    required this.onPressed,
    required this.textStyle,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37.h,
      width: 107,
      child: OutlinedButton(
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
            const EdgeInsets.symmetric(),
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
            SizedBox(width: 5.w),
            Text(text, style: textStyle),
          ],
        ),
      ),
    );
  }
}
