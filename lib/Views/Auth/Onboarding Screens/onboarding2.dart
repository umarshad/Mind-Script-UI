import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Buttons/continue_button.dart';
import 'package:mind_it/Views/Auth/Onboarding%20Screens/onboarding3.dart';

class Onboarding2 extends StatefulWidget {
  final int currentPage;

  const Onboarding2({super.key, required this.currentPage});

  @override
  // ignore: library_private_types_in_public_api
  _Onboarding2State createState() {
    return _Onboarding2State();
  }
}

class _Onboarding2State extends State<Onboarding2> {
  final List<Map<String, String>> moodOptions = [
    {'label': 'Productivity'},
    {'label': 'Self Help'},
    {'label': 'Spirituality'},
    {'label': 'Self Care'},
    {'label': 'Money & Investment'},
    {'label': 'Business & Career'},
    {'label': 'Leadership'},
    {'label': 'Mindfulness & Happiness'},
    {'label': 'Motivation & Inspiration'},
    {'label': 'Health & Nutrition'},
    {'label': 'Creativity'},
    {'label': 'Communication Skills'},
    {'label': 'Society & Culture'},
    {'label': 'Psychology'},
    {'label': 'Parenting'},
    {'label': 'Sex & Relationship'},
  ];

  List<int> selectedOption = [];

  double get progressValue => (widget.currentPage + 1) / 3;

  void toggleSelection(int index) {
    setState(() {
      if (selectedOption.contains(index)) {
        selectedOption.remove(index);
      } else {
        selectedOption.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().moodScreenColor,
      body: SafeArea(
        child: SingleChildScrollView(
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
                'What areas would you \nlike to develop?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 452.h,
                child: ListView.builder(
                  itemCount: moodOptions.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        toggleSelection(index); // Toggle selection on tap
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8.h),
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          height: 50.h,
                          width: 300.h,
                          decoration: BoxDecoration(
                            color: selectedOption.contains(index)
                                ? AppColors().purpleColor
                                : AppColors().whiteColor,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: selectedOption.contains(index)
                                  ? AppColors().purpleColor
                                  : AppColors().transparentColor,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              moodOptions[index]['label']!,
                              style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w500,
                                color: selectedOption.contains(index)
                                    ? AppColors().whiteColor
                                    : AppColors().blackColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 50.h),
              ContinueButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Onboarding3(
                        currentPage: widget.currentPage + 1,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
