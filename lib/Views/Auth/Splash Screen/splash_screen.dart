import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mind_it/Components/Constants/color_constants.dart';
import 'package:mind_it/Components/Constants/image_constants.dart';
import 'package:mind_it/Views/Auth/Login%20Screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().purpleColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(child: Image.asset(ImageConstants.heartImage)),
                Positioned(
                  left: 0,
                  right: 0,
                  top: -65,
                  child: Image.asset(ImageConstants.heartIconImage),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 265,
                  child: Center(
                    child: LoadingAnimationWidget.progressiveDots(
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
