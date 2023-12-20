import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProfilemyordersItemWidget extends StatelessWidget {
  const ProfilemyordersItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 1.h,
        vertical: 2.v,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage110x109,
            height: 110.v,
            width: 109.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_12_50".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 12.v),
                Text(
                  "msg_shorts_in_yellow".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 38.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_qty2".tr,
                              style: CustomTextStyles.bodyMediumGray600,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_1".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
