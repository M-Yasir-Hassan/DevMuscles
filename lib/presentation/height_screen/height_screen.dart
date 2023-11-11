import 'controller/height_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HeightScreen extends GetWidget<HeightController> {
  const HeightScreen({Key? key})
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
                "msg_what_s_your_height".tr,
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
              SizedBox(
                height: 135.v,
                width: 74.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl_166".tr,
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 32.v,
                          right: 3.h,
                        ),
                        child: Text(
                          "lbl_165".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.h),
                        child: Text(
                          "lbl_164".tr,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 156.h,
                child: Divider(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                height: 79.v,
                width: 156.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 156.h,
                        child: Divider(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 2.h,
                          bottom: 12.v,
                        ),
                        child: Text(
                          "lbl_cm".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_167".tr,
                        style: theme.textTheme.displayLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_168".tr,
                style: theme.textTheme.displayMedium,
              ),
              Text(
                "lbl_169".tr,
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "lbl_170".tr,
                style: theme.textTheme.headlineMedium,
              ),
              Spacer(
                flex: 50,
              ),
              _buildButtonsSection(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonsSection() {
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
