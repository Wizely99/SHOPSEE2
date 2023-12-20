import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';
import 'package:herman_s_application1/widgets/custom_outlined_button.dart';
import 'package:herman_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsPage extends StatefulWidget {
  const ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileAddressDetailsPageState createState() =>
      ProfileAddressDetailsPageState();
}

class ProfileAddressDetailsPageState extends State<ProfileAddressDetailsPage>
    with AutomaticKeepAliveClientMixin<ProfileAddressDetailsPage> {
  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController postalCodeController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 38.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_address_1".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildAddress(context),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_address_2".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildAddress1(context),
                      SizedBox(height: 27.v),
                      Text(
                        "lbl_city".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 3.v),
                      _buildCity(context),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_postal_code".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildPostalCode(context),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_phone_number".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildPhoneNumber(context),
                      SizedBox(height: 24.v),
                      _buildAddAnotherAddress(context),
                      SizedBox(height: 26.v),
                      Text(
                        "msg_current_addresses".tr,
                        style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
                      ),
                      SizedBox(height: 20.v),
                      _buildCurrentAddress(
                        context,
                        homeAddressText: "lbl_home_address".tr,
                        editText: "lbl_edit".tr,
                        addressCounterText1: "lbl_address_1".tr,
                        amoyStText1: "lbl_amoy_st_592".tr,
                        addressCounterText2: "lbl_address_2".tr,
                        amoyStText2: "lbl_amoy_st_592".tr,
                        cityText: "lbl_city".tr,
                        losAngelesText: "lbl_los_angeles".tr,
                        postalCodeText: "lbl_postal_code2".tr,
                        zeroText: "lbl_0000000".tr,
                      ),
                      SizedBox(height: 24.v),
                      _buildCurrentAddress(
                        context,
                        homeAddressText: "lbl_home_address".tr,
                        editText: "lbl_edit".tr,
                        addressCounterText1: "lbl_address_1".tr,
                        amoyStText1: "lbl_amoy_st_592".tr,
                        addressCounterText2: "lbl_address_2".tr,
                        amoyStText2: "lbl_amoy_st_592".tr,
                        cityText: "lbl_city".tr,
                        losAngelesText: "lbl_los_angeles".tr,
                        postalCodeText: "lbl_postal_code2".tr,
                        zeroText: "lbl_0000000".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
      controller: addressController,
      hintText: "lbl_enter_address".tr,
    );
  }

  /// Section Widget
  Widget _buildAddress1(BuildContext context) {
    return CustomTextFormField(
      controller: addressController1,
      hintText: "lbl_enter_address".tr,
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return CustomTextFormField(
      controller: cityController,
      hintText: "lbl_enter_your_city".tr,
    );
  }

  /// Section Widget
  Widget _buildPostalCode(BuildContext context) {
    return CustomTextFormField(
      controller: postalCodeController,
      hintText: "msg_enter_postal_code".tr,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberController,
      hintText: "msg_enter_phone_number".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildAddAnotherAddress(BuildContext context) {
    return CustomOutlinedButton(
      text: "msg_add_another_address".tr,
    );
  }

  /// Common widget
  Widget _buildCurrentAddress(
    BuildContext context, {
    required String homeAddressText,
    required String editText,
    required String addressCounterText1,
    required String amoyStText1,
    required String addressCounterText2,
    required String amoyStText2,
    required String cityText,
    required String losAngelesText,
    required String postalCodeText,
    required String zeroText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                homeAddressText,
                style: CustomTextStyles.titleSmallOnPrimary.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  editText,
                  style: CustomTextStyles.titleSmallPrimary_1.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 27.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  addressCounterText1,
                  style: CustomTextStyles.bodyMediumGray600_1.copyWith(
                    color: appTheme.gray600,
                  ),
                ),
              ),
              Text(
                amoyStText1,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  addressCounterText2,
                  style: CustomTextStyles.bodyMediumGray600_1.copyWith(
                    color: appTheme.gray600,
                  ),
                ),
              ),
              Text(
                amoyStText2,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cityText,
                style: CustomTextStyles.bodyMediumGray600_1.copyWith(
                  color: appTheme.gray600,
                ),
              ),
              Text(
                losAngelesText,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                postalCodeText,
                style: CustomTextStyles.bodyMediumGray600_1.copyWith(
                  color: appTheme.gray600,
                ),
              ),
              Text(
                zeroText,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
