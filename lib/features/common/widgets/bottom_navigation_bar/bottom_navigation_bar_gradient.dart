import 'package:exam_project/core/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationBarGradient extends StatelessWidget {
  const BottomNavigationBarGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 126.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [MyColors.backgroundColor1C0F0D, Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          // transform: GradientRotation(3.14 / 2),
        ),
      ),
    );
  }
}
