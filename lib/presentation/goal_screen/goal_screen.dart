import 'controller/goal_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class GoalScreen extends GetWidget<GoalController> {
  const GoalScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 31.h,
            vertical: 44.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 42.v),
              Text(
                "msg_what_s_your_goal".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 15.v),
              Text(
                "msg_this_helps_us_create".tr,
                style: CustomTextStyles.bodySmallIntegralCF,
              ),
              Spacer(
                flex: 49,
              ),
              Text(
                "lbl_gain_weight".tr,
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_lose_weight".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 11.v),
              Divider(
                color: theme.colorScheme.primary,
                indent: 33.h,
                endIndent: 33.h,
              ),
              SizedBox(height: 19.v),
              Text(
                "lbl_get_fitter".tr,
                style: CustomTextStyles.headlineMediumWhiteA700,
              ),
              SizedBox(height: 19.v),
              Divider(
                color: theme.colorScheme.primary,
                indent: 33.h,
                endIndent: 33.h,
              ),
              SizedBox(height: 15.v),
              Text(
                "msg_gain_more_flexible".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_learn_the_basic".tr,
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
              Spacer(
                flex: 50,
              ),
              _buildButtonSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          height: 54.adaptSize,
          width: 54.adaptSize,
          padding: EdgeInsets.all(15.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
          ),
        ),
        CustomElevatedButton(
          width: 120.h,
          text: "lbl_next".tr,
          rightIcon: Container(
            margin: EdgeInsets.only(left: 8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgChevronright,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ),
      ],
    );
  }
}
