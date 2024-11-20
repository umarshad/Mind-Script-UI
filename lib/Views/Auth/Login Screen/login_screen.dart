import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Buttons/custom_gradient_button.dart';
import 'package:mind_it/Components/Buttons/social_login_button.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Constants/image_constants.dart';
import 'package:mind_it/Components/Constants/svg_constants.dart';
import 'package:mind_it/Views/Auth/Forget%20Password/forgot_password.dart';
import 'package:mind_it/Views/Auth/Signup%20Screen/sign_up_screen.dart';
import 'package:mind_it/Views/Auth/Onboarding%20Screens/onboarding1.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    SizedBox(height: 10.h),
                    Container(
                      height: 250.h,
                      width: 360.w,
                      decoration:
                          BoxDecoration(color: AppColors().transparentColor),
                      child: Image.asset(
                        ImageConstants.groupImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Container(
                      height: 520.h,
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
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40.h,
                            ),
                            SizedBox(
                              height: 36.h,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(CupertinoIcons.mail),
                                  hintText: 'Email/ User Name',
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
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 8.h, horizontal: 10.w),
                                ),
                                style: TextStyle(fontSize: 14.sp, height: 1.4),
                                textAlignVertical: TextAlignVertical.center,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              height: 36.h,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(CupertinoIcons.lock),
                                  hintText: 'Password',
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
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 8.h, horizontal: 10.w),
                                ),
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  height: 1.4,
                                ),
                                textAlignVertical: TextAlignVertical.center,
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0, -15.h),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: true,
                                      builder: (BuildContext context) {
                                        return const ForgetPassword();
                                      },
                                    );
                                  },
                                  style: ButtonStyle(
                                    overlayColor: WidgetStateProperty.all(
                                        AppColors().transparentColor),
                                  ),
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                            CustomLoginButton(
                              height: 36.h,
                              width: double.infinity,
                              text: 'Sign In',
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors().whiteColor,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Onboarding1(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: AppColors()
                                          .blackColor
                                          .withOpacity(0.6),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
                                      'or',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors().blackColor),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: AppColors()
                                          .blackColor
                                          .withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            const SocialLoginButton(
                              imgPath: SvgConstants.googleLogo,
                              text: 'Continue with Google',
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const SocialLoginButton(
                              imgPath: SvgConstants.fbLogo,
                              text: 'Continue with Facebook',
                            ),
                            SizedBox(
                              height: 70.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Dont\'t have an account yet?',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUpScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors().redColor),
                                    ),
                                  ),
                                ],
                              ),
                            )
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
