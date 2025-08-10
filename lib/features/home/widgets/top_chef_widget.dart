import 'package:exam_project/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopChefWidget extends StatelessWidget {
  const TopChefWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7.r),
          child: Image.network(
            'https://i.pinimg.com/736x/02/f8/a7/02f8a7d1edf4866076d9a22b2bf22157.jpg',
            width: 83.w,
            height: 74.h,
          ),
        ),
        Text(
          'Joseph',
          style: MyStyles.s12w400whiteFFFDF9,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
