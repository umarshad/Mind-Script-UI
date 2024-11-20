import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Constants/image_constants.dart';

class BestCollections extends StatelessWidget {
  const BestCollections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Best Collections for you',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              children: [
                Container(
                  height: 177.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          ImageConstants.podcast7Image,
                          height: 140.h,
                          width: 140.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Rose Jenifer',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '160 min',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().purpleColor),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 3.r,
                            color: AppColors().blackColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            '6 items',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().purpleColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 177.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          ImageConstants.podcast8Image,
                          height: 140.h,
                          width: 140.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Rocky Ricky',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '160 min',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().purpleColor),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 3.r,
                            color: AppColors().blackColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            '6 items',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().purpleColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 177.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          ImageConstants.podcast9Image,
                          height: 140.h,
                          width: 140.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Jeff Ricky',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '160 min',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().purpleColor),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            CupertinoIcons.circle_fill,
                            size: 3.r,
                            color: AppColors().blackColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            '6 items',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors().purpleColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
