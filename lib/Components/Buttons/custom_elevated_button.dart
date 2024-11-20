import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final String imgPath;
  final String text;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.imgPath,
    required this.text,
    required this.onPressed,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors().purpleColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.r),
            child: SvgPicture.asset(
              imgPath,
              height: 24.h,
              width: 24.w,
            ),
          ),
          SizedBox(width: 8.w),
          Padding(
            padding: EdgeInsets.only(right: 6.r),
            child: Text(
              text,
              style: textStyle.copyWith(
                color: AppColors().whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
