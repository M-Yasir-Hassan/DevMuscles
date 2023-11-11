import 'controller/gender_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class GenderScreen extends GetWidget<GenderController> {
  const GenderScreen({Key? key})
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
                "msg_tell_us_about_yourself".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 15.v),
              Container(
                width: 240.h,
                margin: EdgeInsets.only(
                  left: 34.h,
                  right: 39.h,
                ),
                child: Text(
                  "msg_to_give_you_a_better".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallIntegralCF.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              Spacer(
                flex: 44,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 86.h),
                child: _buildGender(),
              ),
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 86.h),
                child: _buildGender(),
              ),
              Spacer(
                flex: 55,
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
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildGender() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 42.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder70,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 19.v),
          CustomImageView(
            imagePath: ImageConstant.imgVenus,
            height: 48.adaptSize,
            width: 48.adaptSize,
            alignment: Alignment.center,
          ),
          SizedBox(height: 18.v),
          Text(
            "lbl_female".tr,
            style: CustomTextStyles.bodyMedium15,
          ),
        ],
      ),
    );
  }
}
