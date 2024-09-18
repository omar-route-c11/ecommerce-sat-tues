import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCounter extends StatelessWidget {
  final int counter;
  final void Function(int) onAddClicked;
  final void Function(int) onRemoveClicked;

  const ProductCounter({
    required this.onAddClicked,
    required this.onRemoveClicked,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.primary,
        borderRadius: BorderRadius.circular(24.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              onRemoveClicked(counter);
            },
            child: Icon(
              Icons.remove_circle_outline,
              size: 20.w,
              color: ColorManager.white,
            ),
          ),
          SizedBox(
            width: 18.w,
          ),
          Text(
            '$counter',
            style: getMediumStyle(color: ColorManager.white)
                .copyWith(fontSize: 18.sp),
          ),
          SizedBox(
            width: 18.w,
          ),
          InkWell(
            onTap: () {
              onAddClicked(counter);
            },
            child: Icon(
              Icons.add_circle_outline,
              color: ColorManager.white,
              size: 20.w,
            ),
          ),
        ],
      ),
    );
  }
}
