import 'package:exam_project/core/routing/routers.dart';
import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Launch extends StatefulWidget {
  const Launch({super.key});


  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        context.go(Routers.home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.redPinkMainFD5D69,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/Launch/fork-spoon.png',
                width: 153.w,
            ),
            Text('DishDash', style: MyStyles.s64w600whiteFFFDF9,)
          ],
        ),
      ),
    );
  }
}
