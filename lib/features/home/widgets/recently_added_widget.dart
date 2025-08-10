import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_icons.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:exam_project/features/common/widgets/like.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentlyAddedWidget extends StatefulWidget {
  const RecentlyAddedWidget({
    super.key,
  });

  @override
  State<RecentlyAddedWidget> createState() => _RecentlyAddedWidgetState();
}

class _RecentlyAddedWidgetState extends State<RecentlyAddedWidget> {
  bool isTapLike = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 169.w,
          height: 226.h,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.whiteFFFDF9,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(14.r),
                    ),
                    border: BoxBorder.all(
                      color: MyColors.pinkEC888D,
                    ),
                  ),
                  width: 159.w,
                  height: 76.h,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lemonade',
                          style: MyStyles.s12w400brown3E2823,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Acidic and refreshing',
                          style: MyStyles.s13w300brown3E2823,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          children: [
                            Row(
                              spacing: 5.w,
                              children: [
                                Text(
                                  '4',
                                  style: MyStyles.s12w400pinkEC888D,
                                ),
                                SvgPicture.asset(
                                  MyIcons.star,
                                  width: 10.w,
                                  height: 10.h,
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              spacing: 6.w,
                              children: [
                                SvgPicture.asset(
                                  MyIcons.clock,
                                  width: 10.w,
                                  height: 10.h,
                                ),
                                Text(
                                  '30min',
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
              ClipRRect(
                borderRadius: BorderRadius.circular(14.r),
                child: Image.network(
                  'https://avatars.mds.yandex.net/i?id=aa1337efb507fa7157c83cafd5c60843_l-2399446-images-thumbs&n=13',
                  width: 169.w,
                  height: 153.h,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 7, right: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTapLike = !isTapLike;
                      });
                    },
                    child: Like(
                      isTapLike: isTapLike,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
