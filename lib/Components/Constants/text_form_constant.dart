import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors().greyTextColor),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors().lightGreyColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors().lightGreyColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors().lightGreyColor,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
        ),
        style: TextStyle(fontSize: 14.sp, height: 1.4),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
