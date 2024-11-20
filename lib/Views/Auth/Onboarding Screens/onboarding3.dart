import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Bottom%20Nav%20Bar/bottom_bar.dart';
import 'package:mind_it/Components/Buttons/continue_button.dart';

class Onboarding3 extends StatefulWidget {
  final int currentPage;
  const Onboarding3({super.key, required this.currentPage});

  @override
  // ignore: library_private_types_in_public_api
  _Onboarding3State createState() {
    return _Onboarding3State();
  }
}

class _Onboarding3State extends State<Onboarding3> {
  final List<Map<String, String>> moodOptions = [
    {'emoji': '😌', 'label': 'Yes'},
    {'emoji': '🙁', 'label': 'No'},
    {'emoji': '😐', 'label': 'Not Sure'},
  ];

  int selectedOption = -1;

  double get progressValue => (widget.currentPage + 1) / 3;

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
              '${widget.currentPage + 1}/3',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30.h),
            Text(
              'Do you have set \ngoals?',
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
                    MaterialPageRoute(builder: (context) => const BottomBar()),
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
