import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Buttons/continue_button.dart';
import 'package:mind_it/Views/Auth/Onboarding%20Screens/onboarding2.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Onboarding1State createState() {
    return _Onboarding1State();
  }
}

class _Onboarding1State extends State<Onboarding1> {
  final List<Map<String, String>> moodOptions = [
    {'emoji': '😌', 'label': 'Content'},
    {'emoji': '🙂', 'label': 'Happy'},
    {'emoji': '😐', 'label': 'Average'},
    {'emoji': '😓', 'label': 'Unsettled'},
    {'emoji': '🙁', 'label': 'Sad'},
    {'emoji': '🤩', 'label': 'Motivated'},
  ];

  int selectedOption = -1;
  int currentPage = 0;

  double get progressValue => (currentPage + 1) / 3;

  void nextPage() {
    if (currentPage < 2) {
      setState(() {
        currentPage++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().moodScreenColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            LinearProgressIndicator(
              value: progressValue,
              backgroundColor: AppColors().lightGreyColor,
              color: AppColors().purpleColor,
            ),
            SizedBox(height: 5.h),
            Text(
              '${currentPage + 1}/3',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30.h),
            Text(
              'What is your mood \ntoday?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30.h),
            SizedBox(height: 20.h),
            Flexible(
              child: ListView.builder(
                itemCount: moodOptions.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOption = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8.h),
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        height: 50.h,
                        width: 300.h,
                        decoration: BoxDecoration(
                          color: selectedOption == index
                              ? AppColors().purpleColor
                              : AppColors().whiteColor,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: selectedOption == index
                                ? AppColors().purpleColor
                                : AppColors().transparentColor,
                            width: 1.5,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 65.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                moodOptions[index]['emoji']!,
                                style: TextStyle(
                                  fontSize: 25.sp,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                moodOptions[index]['label']!,
                                style: TextStyle(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w500,
                                  color: selectedOption == index
                                      ? AppColors().whiteColor
                                      : AppColors().blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Transform.translate(
              offset: Offset(0, -100.h),
              child: ContinueButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Onboarding2(currentPage: currentPage + 1),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
