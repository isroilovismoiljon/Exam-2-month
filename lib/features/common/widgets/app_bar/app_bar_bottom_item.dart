import 'package:exam_project/core/utils/my_colors.dart';
import 'package:exam_project/core/utils/my_styles.dart';
import 'package:exam_project/features/home/managers/home_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarBottomItem extends StatefulWidget {
  const AppBarBottomItem({
    super.key,
    required this.vm,
  });

  final HomeViewModel vm;

  @override
  State<AppBarBottomItem> createState() => _AppBarBottomItemState();
}

class _AppBarBottomItemState extends State<AppBarBottomItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 11.w,
      children: [
        ...List.generate(
          widget.vm.categories.length,
          (index) {
            return widget.vm.isLoadingCategories
                ? CircularProgressIndicator()
                : TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "${widget.vm.categories[index].title} category bosildi",
                          ),
                          duration: const Duration(seconds: 3),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                      setState(() {
                        widget.vm.selectCategory(
                          widget.vm.categories[index].id,
                        );
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor:
                          (widget.vm.selectedCategory ?? 2) ==
                              widget.vm.categories[index].id
                          ? MyColors.redPinkMainFD5D69
                          : Colors.transparent,
                      padding:  EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                      minimumSize: Size(0, 0)
                    ),
                    child: Text(
                      widget.vm.categories[index].title,
                      style:
                          (widget.vm.selectedCategory ?? 2) ==
                              widget.vm.categories[index].id
                          ? MyStyles.s16w400whiteFFFFFF
                          : MyStyles.s16w400redPinkMainFD5D69,
                    ),
                  );
          },
        ),
      ],
    );
  }
}
