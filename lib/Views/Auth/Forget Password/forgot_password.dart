import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_it/Components/Buttons/custom_gradient_button.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Constants/svg_constants.dart';
import 'package:mind_it/Views/Auth/Forget%20Password/check_email.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  void showConfirmationDialog(BuildContext context) {
    Navigator.of(context).pop();
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return const CheckEmail();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: 304,
        height: 244,
        decoration: BoxDecoration(
            color: AppColors().whiteColor,
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            SvgPicture.asset(
              SvgConstants.alertIcon,
            ),
            SizedBox(height: 16.h),
            Text(
              'Reset Password?',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Are you sure you want to reset your \nPassword?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors().blackColor.withOpacity(0.6)),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 65.0.w),
              child: Card(
                color: AppColors().transparentColor,
                elevation: 8,
                child: CustomLoginButton(
                  height: 36.h,
                  width: 15.w,
                  text: 'Confirm',
                  textStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors().whiteColor),
                  onPressed: () {
                    showConfirmationDialog(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
