import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_it/Components/Buttons/custom_gradient_button.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Constants/svg_constants.dart';
import 'package:mind_it/Views/Auth/Login%20Screen/login_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors().whiteColor),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Verification',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors().blackColor),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Text(
                  'A verification link has been sent to your email address. \nPlease verify your email to continue.',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors().blackColor),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  '00:10 Seconds',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors().blackColor),
                ),
                Text(
                  'Send a new link',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors().redColor.withOpacity(0.4)),
                ),
                SizedBox(
                  height: 150.h,
                ),
                Center(
                  child: Container(
                    width: 120.w,
                    decoration:
                        BoxDecoration(color: AppColors().transparentColor),
                    child: CustomLoginButton(
                      height: 36.h,
                      width: 120.w,
                      text: 'Verify',
                      textStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors().whiteColor),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Container(
                                height: 185.h,
                                width: 200.w,
                                decoration: BoxDecoration(
                                    color: AppColors().whiteColor,
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoginScreen()));
                                        },
                                        icon: const Icon(Icons.close),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: Offset(0, -10.h),
                                      child: SvgPicture.asset(
                                          SvgConstants.thumbIcon),
                                    ),
                                    Text(
                                      'Verification  \nSuccessful !',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
