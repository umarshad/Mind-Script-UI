import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_it/Components/Constants/svg_constants.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Constants/Home%20Reusables/reusable_outline_button.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15.h),
        Transform.translate(
          offset: Offset(-45.w, 0),
          child: Text(
            'Categories you’re looking for',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(left: 28.w, right: 7),
          child: Row(
            children: [
              ReusableOutlineButton(
                imgPath: SvgConstants.businessIcon,
                text: 'Business',
                onPressed: () {},
                textStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                borderRadius: 13,
              ),
              SizedBox(width: 4.w),
              ReusableOutlineButton(
                imgPath: SvgConstants.leadershipIcon,
                text: 'Leadership',
                onPressed: () {},
                textStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                borderRadius: 13,
              ),
              SizedBox(width: 4.w),
              ReusableOutlineButton(
                imgPath: SvgConstants.laptopIcon,
                text: 'Technology',
                onPressed: () {},
                textStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                borderRadius: 13,
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: Row(
            children: [
              ReusableOutlineButton(
                imgPath: SvgConstants.scienceIcon,
                text: 'Science',
                onPressed: () {},
                textStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                borderRadius: 13,
              ),
              SizedBox(width: 4.w),
              ReusableOutlineButton(
                imgPath: SvgConstants.psychologyIcon,
                text: 'Psychology',
                onPressed: () {},
                textStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                borderRadius: 13,
              ),
              SizedBox(width: 4.w),
              ReusableOutlineButton(
                imgPath: SvgConstants.fitnessIcon,
                text: 'Fitness',
                onPressed: () {},
                textStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                borderRadius: 13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
