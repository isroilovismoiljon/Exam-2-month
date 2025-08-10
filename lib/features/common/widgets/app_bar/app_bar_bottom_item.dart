import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:flutter/material.dart';

class AppBarBottomItem extends StatelessWidget {
  const AppBarBottomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: MyColors.redPinkMainFD5D69,
      ),
      child: Text(
        'Breakfast',
        style: MyStyles.s16w400whiteFFFFFF,
      ),
    );
  }
}
