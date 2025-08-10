import 'package:exam_project/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopChefWidget extends StatelessWidget {
  const TopChefWidget({
    super.key,
    required this.firstName,
    required this.profilePhoto,
  });

  final String firstName;
  final String profilePhoto;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7.r),
          child: Image.network(
            profilePhoto,
            width: 83.w,
            height: 74.h,
          ),
        ),
        Text(
          firstName,
          style: MyStyles.s12w400whiteFFFDF9,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
