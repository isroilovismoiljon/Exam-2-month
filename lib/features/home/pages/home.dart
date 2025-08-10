import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_icons.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:exam_project/features/home/managers/home_vm.dart';
import 'package:exam_project/features/common/widgets/app_bar/app_bar_bottom_item.dart';
import 'package:exam_project/features/home/widgets/trading_recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../common/widgets/app_bar/app_bar_action.dart';
import '../../common/widgets/bottom_navigation_bar/my_bottom_navigation_bar.dart';
import '../widgets/recently_added_widget.dart';
import '../widgets/top_chef_widget.dart';
import '../widgets/your_recipe_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      builder: (context, child) {
        return Scaffold(
          extendBody: true,
          backgroundColor: MyColors.backgroundColor1C0F0D,
          appBar: AppBar(
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
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 125),
            child: Column(
              spacing: 19.h,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 36),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 11.w,
                      children: [
                        ...List.generate(
                          7,
                          (index) {
                            return AppBarBottomItem();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.w),
                  child: TradingRecipe(),
                ),
                Container(
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
                      Row(
                        spacing: 17.w,
                        children: [
                          YourRecipeWidget(),
                          YourRecipeWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Column(
                    spacing: 10.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Top Chef',
                        style: MyStyles.s15w500redPinkMainFD5D69,
                      ),
                      Row(
                        spacing: 9.w,
                        children: [
                          ...List.generate(
                            4,
                            (index) {
                              return TopChefWidget();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 6.h,
                    children: [
                      Text(
                        'Recently Added',
                        style: MyStyles.s15w500redPinkMainFD5D69,
                      ),
                      Row(
                        spacing: 19.w,
                        children: [
                          RecentlyAddedWidget(),
                          RecentlyAddedWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: MyBottomNavigationBar(),
        );
      },
    );
  }
}
