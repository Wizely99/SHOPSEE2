import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NinetysevenItemWidget extends StatelessWidget {
  const NinetysevenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle7,
          height: 386.v,
          width: 358.h,
        ),
        SizedBox(height: 26.v),
        Text(
          "lbl_outerwear".tr,
          style: CustomTextStyles.titleMediumBold,
        ),
        SizedBox(height: 6.v),
        Text(
          "msg_raincoats_sweaters".tr,
          style: CustomTextStyles.bodySmallBluegray400,
        ),
      ],
    );
  }
}
