import 'package:ecommerce/core/resources/assets_manager.dart';
import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:flutter/material.dart';

class HeartButton extends StatefulWidget {
  final void Function()? onTap;

  const HeartButton({required this.onTap});

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  String heartIcon = IconsAssets.heart;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      onTap: () => setState(() {
        isClicked = !isClicked;
        heartIcon = !isClicked ? IconsAssets.heart : IconsAssets.clickedHeart;
        widget.onTap?.call();
      }),
      child: Material(
        color: ColorManager.white,
        elevation: 5,
        shape: const StadiumBorder(),
        shadowColor: ColorManager.black,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: ImageIcon(
            AssetImage(heartIcon),
            color: ColorManager.primary,
          ),
        ),
      ),
    );
  }
}
