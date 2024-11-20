import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Constants/image_constants.dart';

class ResuableCard extends StatelessWidget {
  const ResuableCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors().purpleColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 17.h,
                    width: 41.w,
                    decoration: BoxDecoration(
                      color: AppColors().redColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.circle,
                          color: AppColors().whiteColor,
                          size: 5.r,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors().whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'Podcast Self Reminder',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors().whiteColor,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  'Listen what you should remind yourself',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors().whiteColor,
                  ),
                ),
              ],
            ),
            Positioned(
              top: 55.h,
              right: 32.w,
              child: Image.asset(
                ImageConstants.clockImage,
                height: 87.h,
                width: 74.w,
              ),
            ),
            Transform.translate(
              offset: Offset(0, -18.h),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Container(
                      height: 26.h,
                      width: 26.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors().blackColor),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(ImageConstants.person1Image),
                    ),
                    Transform.translate(
                      offset: Offset(-6.w, 0),
                      child: Container(
                        height: 26.h,
                        width: 26.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors().blackColor),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(ImageConstants.person2Image),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Guests: ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors().whiteColor,
                      ),
                    ),
                    TextSpan(
                      text: 'John + Devi',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors().whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
