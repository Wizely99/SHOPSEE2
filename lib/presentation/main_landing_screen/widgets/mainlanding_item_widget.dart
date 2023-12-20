import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class MainlandingItemWidget extends StatelessWidget {
  const MainlandingItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage15,
      height: 58.v,
      width: 80.h,
    );
  }
}
