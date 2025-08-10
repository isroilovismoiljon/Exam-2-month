import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Like extends StatelessWidget {
  const Like({
    super.key,
    required this.isTapLike,
  });

  final bool isTapLike;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      width: 28.w,
      height: 28.h,
      decoration: BoxDecoration(
        color: isTapLike ? MyColors.redPinkMainFD5D69 : MyColors.pinkFFC6C9,
        borderRadius: BorderRadius.circular(14),
      ),
      child: SvgPicture.asset(
        MyIcons.like,
        color: isTapLike ? null : MyColors.pinkEC888D,
      ),
    );
  }
}
