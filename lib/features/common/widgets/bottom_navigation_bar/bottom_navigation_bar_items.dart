import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarItems extends StatelessWidget {
  const BottomNavigationBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 126.h,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(75, 36, 74, 35),
        child: Container(
          width: 281.w,
          height: 56.h,
          decoration: BoxDecoration(
            color: MyColors.redPinkMainFD5D69,
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(MyIcons.home),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(MyIcons.community),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(MyIcons.categories),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(MyIcons.profile),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
