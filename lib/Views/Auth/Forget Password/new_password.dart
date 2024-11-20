import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Buttons/custom_gradient_button.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Views/Auth/Forget%20Password/success.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  void showConfirmationDialog(BuildContext context) {
    Navigator.of(context).pop();
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return const Success();
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
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
              SizedBox(
                height: 36.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline),
                    hintText: 'Enter New Password',
                    hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors().lightGreyColor),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                  ),
                  style: TextStyle(
                    fontSize: 14.sp,
                    height: 1.4,
                  ),
                  textAlignVertical: TextAlignVertical.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.w, top: 2.h),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Use upper & Lowercase letters, Numbers, @, #, \$, !,%',
                    style: TextStyle(
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors().purpleColor),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 36.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors().lightGreyColor),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                  ),
                  style: TextStyle(
                    fontSize: 14.sp,
                    height: 1.4,
                  ),
                  textAlignVertical: TextAlignVertical.center,
                ),
              ),
              SizedBox(height: 35.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0.w),
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
      ),
    );
  }
}
