import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    super.key, required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      width: 28.w,
      height: 28.h,
      decoration: BoxDecoration(
        color: MyColors.pinkFFC6C9,
        borderRadius: BorderRadius.circular(14),
      ),
      child: SvgPicture.asset(
        icon,
        color: MyColors.pinkEC888D,
      ),
    );
  }
}
