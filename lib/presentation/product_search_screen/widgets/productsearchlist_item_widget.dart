import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProductsearchlistItemWidget extends StatelessWidget {
  const ProductsearchlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage171x171,
          height: 171.adaptSize,
          width: 171.adaptSize,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          "msg_long_sleeve_t_shirt".tr,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
