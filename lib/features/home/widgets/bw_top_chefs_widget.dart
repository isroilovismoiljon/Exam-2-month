import 'package:exam_project/core/utils/my_styles.dart';
import 'package:exam_project/data/models/users/chef_model.dart';
import 'package:exam_project/features/home/managers/home_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'top_chef_widget.dart';

class TopChefsWidget extends StatelessWidget {
  const TopChefsWidget({
    super.key,
    required this.chefs, required this.vm,
  });

  final HomeViewModel vm;
  final List<ChefModel> chefs;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Chef',
          style: MyStyles.s15w500redPinkMainFD5D69,
        ),
        vm.isLoadingChefs
            ? CircularProgressIndicator()
            : vm.errorChefs.length > 0
            ? Center(
                child: Text(vm.errorChefs),
              )
            : Row(
                spacing: 9.w,
                children: [
                  ...List.generate(
                    4,
                    (index) {
                      return TopChefWidget(
                        firstName: chefs[index].firstName,
                        profilePhoto: chefs[index].profilePhoto,
                      );
                    },
                  ),
                ],
              ),
      ],
    );
  }
}
