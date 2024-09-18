import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/font_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 36.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.s14.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: Sizes.s1.w),
          backgroundColor: ColorManager.primary,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: getRegularStyle(
            color: ColorManager.white,
            fontSize: FontSize.s14,
          ),
        ),
      ),
    );
  }
}
