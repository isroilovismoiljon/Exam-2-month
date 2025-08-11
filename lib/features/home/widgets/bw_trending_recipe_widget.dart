import 'package:exam_project/core/utils/my_styles.dart';
import 'package:exam_project/features/home/managers/home_vm.dart';
import 'package:exam_project/features/home/widgets/trading_recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrendingRecipeWidget extends StatelessWidget {
  const TrendingRecipeWidget({
    super.key, required this.vm,
  });
  final HomeViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 9.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Trending Recipe",
          style: MyStyles.s15w500redPinkMainFD5D69,
        ),
        SizedBox(
          width: 358.w,
          height: 185.h,
          child: TradingRecipe(
            title: vm.trendingRecipe.title,
            description: vm.trendingRecipe.description,
            photo: vm.trendingRecipe.photo,
            timeRequired: vm.trendingRecipe.timeRequired,
            rating: vm.trendingRecipe.rating,
          ),
        ),
      ],
    );
  }
}
