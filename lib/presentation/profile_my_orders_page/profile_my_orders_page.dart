import '../profile_my_orders_page/widgets/profilemyorders_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:herman_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileMyOrdersPage extends StatefulWidget {
  const ProfileMyOrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileMyOrdersPageState createState() => ProfileMyOrdersPageState();
}

class ProfileMyOrdersPageState extends State<ProfileMyOrdersPage>
    with AutomaticKeepAliveClientMixin<ProfileMyOrdersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              _buildProfileMyOrders(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileMyOrders(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_orders".tr,
            style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
          ),
          SizedBox(height: 20.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.v),
                child: SizedBox(
                  width: 358.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray300,
                  ),
                ),
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ProfilemyordersItemWidget();
            },
          ),
        ],
      ),
    );
  }
}
