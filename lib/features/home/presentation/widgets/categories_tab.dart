import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:ecommerce/features/home/presentation/widgets/categories_list.dart';
import 'package:ecommerce/features/home/presentation/widgets/sub_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Insets.s12.w,
        vertical: Insets.s12.h,
      ),
      child: Row(
        children: [
          const CategoriesList(),
          SizedBox(
            width: Sizes.s16.w,
          ),
          const SubCategoriesList(),
        ],
      ),
    );
  }
}
