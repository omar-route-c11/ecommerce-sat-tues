import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSectionBar extends StatelessWidget {
  final String sectionName;
  final VoidCallback onViewAllClicked;

  const CustomSectionBar({
    required this.sectionName,
    required this.onViewAllClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.s16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionName,
            style: getMediumStyle(
              fontSize: 18,
              color: ColorManager.darkBlue,
            ),
          ),
          TextButton(
            onPressed: onViewAllClicked,
            child: Text(
              'view all',
              style: getMediumStyle(color: ColorManager.darkBlue),
            ),
          ),
        ],
      ),
    );
  }
}
