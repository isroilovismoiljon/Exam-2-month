import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:exam_project/features/home/managers/home_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'your_recipe_widget.dart';

class YourRecipesWidget extends StatelessWidget {
  const YourRecipesWidget({
    super.key, required this.vm,
  });
  final HomeViewModel vm;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 14.h,
        horizontal: 38.w,
      ),
      decoration: BoxDecoration(
        color: MyColors.redPinkMainFD5D69,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 255.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 9.h,
        children: [
          Text(
            "Your recipes",
            style: MyStyles.s13w400whiteFFFDF9,
          ),
          vm.isLoadingYourRecipes
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : vm.errorYourRecipes.length > 0
              ? Center(
                  child: Text(vm.errorYourRecipes),
                )
              : Row(
                  spacing: 17.w,
                  children: [
                    YourRecipeWidget(
                      image: vm.yourRecipes[0].photo,
                      title: vm.yourRecipes[0].title,
                      rating: vm.yourRecipes[0].rating,
                      timeRequired: vm.yourRecipes[0].timeRequired,
                    ),
                    YourRecipeWidget(
                      image: vm.yourRecipes[1].photo,
                      title: vm.yourRecipes[1].title,
                      rating: vm.yourRecipes[1].rating,
                      timeRequired: vm.yourRecipes[1].timeRequired,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
