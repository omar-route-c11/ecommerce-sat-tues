import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/font_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTextItem extends StatelessWidget {
  final int index;
  final String title;
  final bool isSelected;
  final void Function(int) onItemClick;

  const CategoryTextItem(
    this.index,
    this.title,
    this.isSelected,
    this.onItemClick,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onItemClick(index),
      child: Container(
        color: isSelected ? ColorManager.white : Colors.transparent,
        padding: EdgeInsets.all(Insets.s8.sp),
        child: Row(
          children: [
            Visibility(
              visible: isSelected,
              child: Container(
                width: Sizes.s8.w,
                height: Sizes.s60.h,
                decoration: BoxDecoration(
                  color: ColorManager.primary,
                  borderRadius: BorderRadius.circular(Sizes.s100.r),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: Insets.s16.h,
                  horizontal: Insets.s8.w,
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: getMediumStyle(
                    color: ColorManager.primary,
                    fontSize: FontSize.s14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
