import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_icons.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/widgets/like.dart';

class YourRecipeWidget extends StatefulWidget {
  const YourRecipeWidget({
    super.key,
  });

  @override
  State<YourRecipeWidget> createState() => _YourRecipeWidgetState();
}

class _YourRecipeWidgetState extends State<YourRecipeWidget> {
  bool isTapLike = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 168.w,
      height: 195.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(13),
              child: Image.network(
                "https://sun9-35.userapi.com/impg/LMdJMrwdMWSL8kbJvSTnbiqwl6RJEnO482BRnw/aEIJ9QvKa0k.jpg?size=1200x799&quality=96&sign=70066b44b3f16d1324834cb30f346b15&c_uniq_tag=0YJTdjGNqSd-v8kfggPf7RKj2yeC4IecTPvcRw_BJ5c&type=album",
                width: 168.w,
                height: 162.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.r),
                color: MyColors.whiteFFFDF9,
              ),
              width: 168.w,
              height: 48.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                child: Column(
                  spacing: 2.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chicken Burger",
                      style: MyStyles.s12w400Color1C0F0D,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      spacing: 26.w,
                      children: [
                        Row(
                          spacing: 4.w,
                          children: [
                            Text(
                              '5',
                              style: MyStyles.s12w400pinkEC888D,
                            ),
                            SvgPicture.asset(MyIcons.star),
                          ],
                        ),
                        Row(
                          spacing: 6.w,
                          children: [
                            SvgPicture.asset(MyIcons.clock),
                            Text(
                              '15min',
                              style: MyStyles.s12w400pinkEC888D,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 7, right: 8.52),
              child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isTapLike = !isTapLike;
                    });
                  },
                  child: Like(isTapLike: isTapLike,)),
            ),
          ),
        ],
      ),
    );
  }
}
