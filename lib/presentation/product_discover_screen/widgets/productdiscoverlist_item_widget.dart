import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProductdiscoverlistItemWidget extends StatelessWidget {
  const ProductdiscoverlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage3,
          height: 236.v,
          width: 171.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          width: 153.h,
          child: Text(
            "msg_women_blue_skinny".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallOnPrimary.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          "lbl_13_99".tr,
          style: CustomTextStyles.titleSmallPrimarySemiBold,
        ),
      ],
    );
  }
}
