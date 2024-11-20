import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';

class ReusableChallengeCard extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const ReusableChallengeCard(
      {super.key, required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors().purpleColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(text, style: textStyle),
            Text(
              'Days',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors().whiteColor),
            ),
            Text(
              'Challenge',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors().whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
