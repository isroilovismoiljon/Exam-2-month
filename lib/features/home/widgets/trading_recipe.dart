import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_icons.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/widgets/like.dart';

class TradingRecipe extends StatefulWidget {
  const TradingRecipe({
    super.key,
    required this.title,
    required this.description,
    required this.photo,
    required this.timeRequired,
    required this.rating,
  });

  final String title;
  final String description;
  final String photo;
  final int timeRequired;
  final int rating;

  @override
  State<TradingRecipe> createState() => _TradingRecipeState();
}

class _TradingRecipeState extends State<TradingRecipe> {
  bool isTapLike = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 8, 15, 2),
            alignment: Alignment.topLeft,
            width: 348.w,
            height: 49.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(14),
              ),
              border: Border.all(
                color: MyColors.pinkEC888D,
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 260.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: MyStyles.s13w400whiteFFFDF9,
                      ),
                      Text(
                        widget.description,
                        style: MyStyles.s13w300whiteFFFDF9,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      spacing: 6.w,
                      children: [
                        SvgPicture.asset(
                          MyIcons.clock,
                          width: 9.7.w,
                          height: 10.h,
                        ),
                        Text(
                          "${widget.timeRequired}min",
                          style: MyStyles.s12w400pinkEC888D,
                        ),
                      ],
                    ),
                    Row(
                      spacing: 5.w,
                      children: [
                        Text(
                          "${widget.rating}",
                          style: MyStyles.s12w400pinkEC888D,
                        ),
                        SvgPicture.asset(
                          MyIcons.star,
                          width: 10.w,
                          height: 10.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(14),
            child: Image.network(
              widget.photo,
              width: 358.w,
              height: 143.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 7, right: 8.52),
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
    )
    ;
  }
}

