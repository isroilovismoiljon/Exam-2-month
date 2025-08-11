import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_icons.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_bar_action.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.backgroundColor1C0F0D,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(19, 19, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi! Dianne',
              style: MyStyles.s25w400pinkEC888D,
            ),
            Text(
              'What are you cooking today',
              style: MyStyles.s13w400whiteFFFDF9,
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 38),
          child: Row(
            spacing: 5.w,
            children: [
              AppBarAction(
                icon: MyIcons.notification,
              ),
              AppBarAction(
                icon: MyIcons.search,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56);
}