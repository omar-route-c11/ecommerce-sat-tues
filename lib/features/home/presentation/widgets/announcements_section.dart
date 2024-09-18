import 'dart:async';

import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnnouncementsSection extends StatelessWidget {
  final List<String> imagesPaths;
  final int currentIndex;
  final Timer timer;

  const AnnouncementsSection({
    required this.imagesPaths,
    required this.currentIndex,
    required this.timer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Insets.s16.w),
      child: Stack(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 2000),
            child: Image.asset(
              height: 210.h,
              width: double.infinity,
              imagesPaths[currentIndex],
              key: ValueKey<int>(currentIndex),
            ),
          ),
          SizedBox(
            height: 210.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: imagesPaths.map((image) {
                final int index = imagesPaths.indexOf(image);
                return Container(
                  width: 8.w,
                  height: 8.h,
                  margin: EdgeInsets.symmetric(
                    horizontal: 4.0.w,
                    vertical: 12.h,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentIndex == index
                        ? ColorManager.primary
                        : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
