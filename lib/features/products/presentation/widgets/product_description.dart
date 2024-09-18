import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class ProductDescription extends StatelessWidget {
  final String description;

  const ProductDescription({required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: getMediumStyle(color: ColorManager.appBarTitle)
              .copyWith(fontSize: 18.sp),
        ),
        SizedBox(
          height: 8.h,
        ),
        ReadMoreText(
          description,
          style: getMediumStyle(
            color: ColorManager.appBarTitle.withOpacity(.6),
          ).copyWith(fontSize: 18.sp),
          trimExpandedText: ' Read Less',
          trimCollapsedText: ' Read More',
          trimLines: 3,
          trimMode: TrimMode.Line,
          colorClickableText: ColorManager.appBarTitle,
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
