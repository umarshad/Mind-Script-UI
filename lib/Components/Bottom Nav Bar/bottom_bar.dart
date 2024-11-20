import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mind_it/Components/Constants/svg_constants.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Screens/center_tab.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Screens/home_screen.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Screens/explore.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Screens/library.dart';
import 'package:mind_it/Views/Bottom%20Bar%20Screens/Screens/podcast.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late PersistentTabController controller;

  @override
  void initState() {
    super.initState();
    controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> buildScreens() {
    return [
      const HomeScreen(),
      const Explore(),
      const CenterTab(),
      const Library(),
      const Podcast(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      //--------------Home Icon--------------
      PersistentBottomNavBarItem(
        icon: Transform.translate(
          offset: Offset(0, 10.h),
          child: (controller.index == 0)
              ? SvgPicture.asset(
                  SvgConstants.homeIcon,
                  height: 24.h,
                  width: 24.w,
                )
              : SvgPicture.asset(
                  SvgConstants.whiteHomeIcon,
                  height: 24.h,
                  width: 24.w,
                ),
        ),
        title: "Home",
        textStyle: TextStyle(
          color: AppColors().blackColor.withOpacity(0.5),
          fontSize: 12.sp,
          fontWeight:
              (controller.index == 0) ? FontWeight.w700 : FontWeight.w400,
          height: 3.0,
        ),
        activeColorPrimary: AppColors().purpleColor,
      ),

      //--------------Explore Icon--------------
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 6.h),
          child: Container(
            height: 24.h,
            width: 24.w,
            decoration: BoxDecoration(color: AppColors().transparentColor),
            child: const Icon(
              CupertinoIcons.search,
              size: 24,
            ),
          ),
        ),
        title: "Explore",
        textStyle: TextStyle(
            color: AppColors().blackColor.withOpacity(0.5),
            fontSize: 12.sp,
            fontWeight:
                (controller.index == 1) ? FontWeight.w700 : FontWeight.w400,
            height: 3),
        activeColorPrimary: AppColors().purpleColor,
      ),

      //--------------Center Icon--------------
      PersistentBottomNavBarItem(
        icon: Container(
          width: 65.w,
          decoration: BoxDecoration(color: AppColors().transparentColor),
          child: SvgPicture.asset(SvgConstants.bottomIcon),
        ),
        activeColorPrimary: AppColors().transparentColor,
      ),

      //--------------Library Icon--------------
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Container(
              height: 24.h,
              width: 24.w,
              decoration: BoxDecoration(color: AppColors().transparentColor),
              child: (controller.index == 3)
                  ? const Icon(
                      Icons.bookmark,
                      size: 24,
                    )
                  : const Icon(
                      Icons.bookmark_outline_outlined,
                      size: 24,
                    )),
        ),
        title: "Library",
        textStyle: TextStyle(
            color: AppColors().blackColor.withOpacity(0.5),
            fontSize: 12.sp,
            fontWeight:
                (controller.index == 3) ? FontWeight.w700 : FontWeight.w400,
            height: 3),
        activeColorPrimary: AppColors().purpleColor,
      ),

      //--------------Podcast Icon--------------
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Container(
            height: 24.h,
            width: 24.w,
            decoration: BoxDecoration(color: AppColors().transparentColor),
            child: (controller.index == 4)
                ? const Icon(
                    CupertinoIcons.mic_fill,
                    size: 24,
                  )
                : const Icon(
                    CupertinoIcons.mic,
                    size: 24,
                  ),
          ),
        ),
        title: "Podcasts",
        textStyle: TextStyle(
            color: AppColors().blackColor.withOpacity(0.5),
            fontSize: 12.sp,
            fontWeight:
                (controller.index == 4) ? FontWeight.w700 : FontWeight.w400,
            height: 3),
        activeColorPrimary: AppColors().purpleColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PersistentTabView(
          context,
          controller: controller,
          screens: buildScreens(),
          items: navBarsItems(),
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardAppears: true,
          backgroundColor: AppColors().whiteColor,
          isVisible: true,
          confineToSafeArea: true,
          navBarHeight: 70.h,
          animationSettings: const NavBarAnimationSettings(
            navBarItemAnimation: ItemAnimationSettings(
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimationSettings(
              animateTabTransition: true,
              duration: Duration(milliseconds: 200),
              screenTransitionAnimationType:
                  ScreenTransitionAnimationType.fadeIn,
            ),
          ),
          navBarStyle: NavBarStyle.style15,
          onItemSelected: (index) {
            setState(() {
              controller.index = index;
            });
          },
        ),
        Positioned(
          bottom: 54,
          left: 0,
          right: 0,
          child: Container(
            height: 2.h,
            decoration: BoxDecoration(
              color: AppColors().transparentColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 0.5,
                  blurRadius: 12,
                  offset: Offset(0, -10.h),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
