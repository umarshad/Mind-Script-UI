import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Buttons/custom_gradient_button.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Constants/image_constants.dart';
import 'package:mind_it/Components/Constants/text_form_constant.dart';
import 'package:mind_it/Views/Auth/Signup%20Screen/verification_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().whiteColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            ImageConstants.clipperImage,
          ),
          Transform.translate(
            offset: Offset(0, -25.h),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                ImageConstants.circleImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 20.h),
                    Container(
                      height: 80.h,
                      width: 80.w,
                      decoration:
                          BoxDecoration(color: AppColors().transparentColor),
                      child: Image.asset(
                        ImageConstants.mindScriptImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      height: 660.h,
                      width: 365.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors().whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors().blackColor.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 5.h),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 12.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            const CustomTextFormField(hintText: 'Name'),
                            SizedBox(
                              height: 40.h,
                            ),
                            const CustomTextFormField(hintText: 'User Name'),
                            SizedBox(
                              height: 40.h,
                            ),
                            const CustomTextFormField(
                                hintText: 'Email Address'),
                            SizedBox(
                              height: 40.h,
                            ),
                            const CustomTextFormField(hintText: 'Password'),
                            SizedBox(
                              height: 40.h,
                            ),
                            const CustomTextFormField(
                                hintText: 'Confirm Password'),
                            SizedBox(
                              height: 60.h,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'By clicking Next, you agree to our ',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors().blackColor),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors().blackColor),
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors().blackColor),
                                  ),
                                  TextSpan(
                                    text: 'Terms of Use',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors().blackColor),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 60.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 170.0, right: 6),
                              child: CustomLoginButton(
                                  height: 36.h,
                                  width: 119.w,
                                  text: 'Next',
                                  textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors().whiteColor),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VerificationScreen(),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
