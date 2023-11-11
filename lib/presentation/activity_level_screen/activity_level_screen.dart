import 'controller/activity_level_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ActivityLevelScreen extends GetWidget<ActivityLevelController> {
  const ActivityLevelScreen({Key? key})
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
            horizontal: 25.h,
            vertical: 44.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 41.v),
              Container(
                width: 289.h,
                margin: EdgeInsets.symmetric(horizontal: 18.h),
                child: Text(
                  "msg_your_regular_ph".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "msg_this_helps_us_create".tr,
                style: CustomTextStyles.bodySmallIntegralCF,
              ),
              Spacer(
                flex: 44,
              ),
              Text(
                "lbl_rookie".tr,
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
              SizedBox(height: 10.v),
              Text(
                "lbl_beginner".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 11.v),
              Divider(
                color: theme.colorScheme.primary,
                indent: 39.h,
                endIndent: 39.h,
              ),
              SizedBox(height: 22.v),
              Text(
                "lbl_intermediate".tr,
                style: CustomTextStyles.headlineMediumWhiteA700,
              ),
              SizedBox(height: 16.v),
              Divider(
                color: theme.colorScheme.primary,
                indent: 39.h,
                endIndent: 39.h,
              ),
              SizedBox(height: 15.v),
              Text(
                "lbl_advance".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_true_beast".tr,
                style: CustomTextStyles.titleLargeOpenSansPrimaryContainer,
              ),
              Spacer(
                flex: 55,
              ),
              _buildActivityLevelButtons(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActivityLevelButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
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
            text: "lbl_start".tr,
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
      ),
    );
  }
}
