import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';

class SocialLoginButton extends StatelessWidget {
  final String imgPath;
  final String text;
  const SocialLoginButton(
      {super.key, required this.imgPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors().lightGreyColor),
          borderRadius: BorderRadius.circular(5),
          color: AppColors().whiteColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            SvgPicture.asset(imgPath),
            SizedBox(
              width: 60.w,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors().blackColor),
            )
          ],
        ),
      ),
    );
  }
}
