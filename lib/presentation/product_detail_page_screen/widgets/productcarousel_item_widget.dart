import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProductcarouselItemWidget extends StatelessWidget {
  const ProductcarouselItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle11,
      height: 289.v,
      width: 390.h,
    );
  }
}
