import 'controller/age_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class AgeScreen extends GetWidget<AgeController> {
  const AgeScreen({Key? key})
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
              SizedBox(height: 41.v),
              Text(
                "msg_how_old_are_you".tr,
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
                "lbl_33".tr,
                style: theme.textTheme.headlineMedium,
              ),
              Text(
                "lbl_34".tr,
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "lbl_35".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                width: 113.h,
                child: Divider(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                "lbl_36".tr,
                style: theme.textTheme.displayLarge,
              ),
              SizedBox(
                width: 113.h,
                child: Divider(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_37".tr,
                style: theme.textTheme.displayMedium,
              ),
              Text(
                "lbl_38".tr,
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "lbl_39".tr,
                style: theme.textTheme.headlineMedium,
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
