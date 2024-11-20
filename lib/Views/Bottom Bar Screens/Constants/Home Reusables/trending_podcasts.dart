import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/image_constants.dart';

class TrendingPodcasts extends StatelessWidget {
  const TrendingPodcasts({
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
              'Trending Podcasts',
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
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 167.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImageConstants.podcast4Image,
                              height: 140.h,
                              width: 140.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Michael Jack',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 167.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImageConstants.podcast5Image,
                              height: 140.h,
                              width: 140.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Kim Richard',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 167.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              ImageConstants.podcast6Image,
                              height: 140.h,
                              width: 140.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Jeff Ricky',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
