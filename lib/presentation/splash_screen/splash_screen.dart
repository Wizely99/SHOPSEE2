import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 261.v),
          child: Column(
            children: [
              Text(
                "lbl_shopsie".tr,
                style: theme.textTheme.displayLarge,
              ),
              SizedBox(height: 24.v),
              Text(
                "msg_the_best_way_to".tr,
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
