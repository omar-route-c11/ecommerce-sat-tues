import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/font_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCardItem extends StatelessWidget {
  final String title;
  final String image;

  const CategoryCardItem(
    this.title,
    this.image,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Insets.s16.h),
      height: Sizes.s100.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Sizes.s12.r),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Insets.s18.w,
                  vertical: Insets.s8.h,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            title,
                            style: getBoldStyle(
                              color: ColorManager.text,
                              fontSize: FontSize.s16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            width: 110.w,
                            height: 35.h,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(120.w, 30.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.w,
                                  vertical: 0,
                                ),
                                backgroundColor: ColorManager.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              child: Text(
                                'Shop Now',
                                style:
                                    getRegularStyle(color: ColorManager.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
