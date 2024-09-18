import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:ecommerce/features/home/presentation/widgets/category_text_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList();

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.containerGray,
          border: BorderDirectional(
            top: BorderSide(
              width: Sizes.s2,
              color: ColorManager.primary.withOpacity(0.3),
            ),
            start: BorderSide(
              width: Sizes.s2,
              color: ColorManager.primary.withOpacity(0.3),
            ),
            bottom: BorderSide(
              width: Sizes.s2,
              color: ColorManager.primary.withOpacity(0.3),
            ),
          ),
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(Sizes.s12.r),
            bottomStart: Radius.circular(Sizes.s12.r),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(Sizes.s12.r),
            bottomStart: Radius.circular(Sizes.s12.r),
          ),
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (_, index) => CategoryTextItem(
              index,
              'Laptops & Electronics',
              _selectedIndex == index,
              onItemClick,
            ),
          ),
        ),
      ),
    );
  }

  void onItemClick(int index) => setState(() => _selectedIndex = index);
}
