import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/best_collections.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/featured_podcasts.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/resusable_card.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/reusable_categories_row.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/reusable_challenge_card.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/trending_podcasts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mind_it/Components/Buttons/custom_elevated_button.dart';
import 'package:mind_it/Components/Buttons/custom_outline_button.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Constants/svg_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().whiteColor.withOpacity(0.6),
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: AppColors().whiteColor,
        surfaceTintColor: AppColors().whiteColor,
        shadowColor: AppColors().blackColor,
        leading: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8.r),
            child: SvgPicture.asset(
              SvgConstants.menuIcon,
              height: 28.h,
              width: 28.w,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        title: Transform.translate(
          offset: Offset(-25.w, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Good Morning ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: AppColors().blackColor.withOpacity(0.5),
                      ),
                    ),
                    TextSpan(
                      text: '👋',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'John Smith',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SvgPicture.asset(SvgConstants.bellIcon),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w, right: 15.w),
            child: SvgPicture.asset(SvgConstants.moonIcon),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 70.h,
                        child: CustomOutlineButton(
                          imgPath: SvgConstants.goalIcon,
                          text: 'Today’s Dare',
                          onPressed: () {},
                          textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      SizedBox(
                        height: 70.h,
                        child: CustomElevatedButton(
                          imgPath: SvgConstants.heartIcon,
                          text: 'Free Script',
                          onPressed: () {},
                          textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Stack(
                  children: [
                    SizedBox(
                      height: 180.h,
                      width: 365.w,
                      child: PageView(
                        controller: _pageController,
                        children: const [
                          ResuableCard(),
                          ResuableCard(),
                          ResuableCard(),
                          ResuableCard(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 4,
                    effect: ColorTransitionEffect(
                      dotHeight: 8.h,
                      dotWidth: 8.w,
                      activeDotColor: AppColors().activeDotsColor,
                      dotColor: AppColors().activeDotsColor.withOpacity(0.2),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            const CategoriesRow(),
            SizedBox(height: 20.h),
            const FeaturedPodcasts(
              text: 'Featured Podcasts',
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Can you dare to learn?',
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 5.w),
                  ReusableChallengeCard(
                    text: '3',
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.sp,
                        color: AppColors().whiteColor),
                  ),
                  SizedBox(width: 5.w),
                  ReusableChallengeCard(
                    text: '7',
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.sp,
                        color: AppColors().whiteColor),
                  ),
                  SizedBox(width: 5.w),
                  ReusableChallengeCard(
                    text: '14',
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.sp,
                        color: AppColors().whiteColor),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  ReusableChallengeCard(
                    text: '21',
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.sp,
                        color: AppColors().whiteColor),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  ReusableChallengeCard(
                    text: '30',
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.sp,
                        color: AppColors().whiteColor),
                  ),
                ],
              ),
            ),
            const TrendingPodcasts(),
            const BestCollections(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
