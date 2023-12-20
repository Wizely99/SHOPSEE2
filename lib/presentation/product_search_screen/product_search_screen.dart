import '../product_search_screen/widgets/productsearchlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';
import 'package:herman_s_application1/widgets/custom_text_form_field.dart';

class ProductSearchScreen extends StatelessWidget {
  ProductSearchScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              CustomTextFormField(
                controller: searchBarController,
                hintText: "lbl_sl_iders".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(10.h, 18.v, 6.h, 18.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSearch1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 19.v, 10.h, 17.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 19.v),
                borderDecoration:
                    TextFormFieldStyleHelper.fillPrimaryContainer1,
                fillColor: theme.colorScheme.primaryContainer,
              ),
              SizedBox(height: 29.v),
              _buildProductSearchList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductSearchList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 200.v,
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: 6,
          itemBuilder: (context, index) {
            return ProductsearchlistItemWidget();
          },
        ),
      ),
    );
  }
}
