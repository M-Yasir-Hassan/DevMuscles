import 'controller/sign_up_two_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/presentation/login_two_page/login_two_page.dart';
import 'package:yasir_s_application3/presentation/sign_up_page/sign_up_page.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoTabContainerScreen
    extends GetWidget<SignUpTwoTabContainerController> {
  const SignUpTwoTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBackgroundStack(),
              SizedBox(
                height: 728.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    LoginTwoPage(),
                    SignUpPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackgroundStack() {
    return SizedBox(
      height: 384.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBackground384x375,
            height: 384.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Container(
            height: 25.v,
            width: 114.h,
            margin: EdgeInsets.only(
              left: 32.h,
              top: 58.v,
            ),
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.whiteA700,
              labelStyle: TextStyle(
                fontSize: 13.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: appTheme.whiteA700,
              unselectedLabelStyle: TextStyle(
                fontSize: 13.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
              indicatorColor: theme.colorScheme.primary,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_login".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_sign_up".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
