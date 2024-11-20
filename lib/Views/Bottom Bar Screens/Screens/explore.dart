import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/best_collections.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/featured_podcasts.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/reusable_categories_row.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 48.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      size: 16,
                      color: AppColors().purpleColor,
                    ),
                    hintText: 'What would you like to explore?',
                    hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    suffixIcon: Icon(
                      CupertinoIcons.arrow_up_arrow_down,
                      size: 16,
                      color: AppColors().purpleColor,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors().purpleColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors().purpleColor),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors().purpleColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const CategoriesRow(),
                  SizedBox(
                    height: 35.h,
                  ),
                  const FeaturedPodcasts(
                    text: 'Suggested Podcasts',
                  ),
                  const BestCollections(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
