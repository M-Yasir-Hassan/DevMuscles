import 'controller/weight_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class WeightScreen extends GetWidget<WeightController> {
  const WeightScreen({Key? key})
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
            horizontal: 5.h,
            vertical: 44.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 42.v),
              Text(
                "msg_what_s_your_weight".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 15.v),
              Text(
                "msg_you_can_always_change".tr,
                style: CustomTextStyles.bodySmallIntegralCF,
              ),
              Spacer(
                flex: 42,
              ),
              _buildWeightRow(),
              Spacer(
                flex: 57,
              ),
              _buildButtonsRow(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWeightRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Opacity(
          opacity: 0.1,
          child: SizedBox(
            height: 174.v,
            child: VerticalDivider(
              width: 3.h,
              thickness: 3.v,
              color: theme.colorScheme.primary.withOpacity(0.39),
              indent: 132.h,
              endIndent: 14.h,
            ),
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 174.v,
              child: VerticalDivider(
                width: 3.h,
                thickness: 3.v,
                color: theme.colorScheme.primary.withOpacity(0.42),
                indent: 132.h,
                endIndent: 14.h,
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.3,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 174.v,
              child: VerticalDivider(
                width: 3.h,
                thickness: 3.v,
                color: theme.colorScheme.primary.withOpacity(0.46),
                indent: 132.h,
                endIndent: 14.h,
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 174.v,
              child: VerticalDivider(
                width: 3.h,
                thickness: 3.v,
                color: theme.colorScheme.primary.withOpacity(0.49),
                indent: 132.h,
                endIndent: 14.h,
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 174.v,
              child: VerticalDivider(
                width: 3.h,
                thickness: 3.v,
                color: theme.colorScheme.primary.withOpacity(0.53),
                indent: 116.h,
                endIndent: 10.h,
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.6,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 174.v,
              child: VerticalDivider(
                width: 3.h,
                thickness: 3.v,
                color: theme.colorScheme.primary.withOpacity(0.56),
                indent: 132.h,
                endIndent: 14.h,
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.7,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 174.v,
              child: VerticalDivider(
                width: 3.h,
                thickness: 3.v,
                color: theme.colorScheme.primary.withOpacity(0.6),
                indent: 132.h,
                endIndent: 14.h,
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.8,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 174.v,
              child: VerticalDivider(
                width: 3.h,
                thickness: 3.v,
                color: theme.colorScheme.primary.withOpacity(0.64),
                indent: 132.h,
                endIndent: 14.h,
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.9,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: SizedBox(
              height: 174.v,
              child: VerticalDivider(
                width: 3.h,
                thickness: 3.v,
                color: theme.colorScheme.primary.withOpacity(0.67),
                indent: 132.h,
                endIndent: 14.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: SizedBox(
            height: 174.v,
            child: VerticalDivider(
              width: 3.h,
              thickness: 3.v,
              color: theme.colorScheme.primary,
              indent: 116.h,
              endIndent: 10.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: SizedBox(
            height: 174.v,
            child: VerticalDivider(
              width: 3.h,
              thickness: 3.v,
              color: theme.colorScheme.primary,
              indent: 132.h,
              endIndent: 14.h,
            ),
          ),
        ),
        Container(
          height: 175.v,
          width: 74.h,
          margin: EdgeInsets.only(left: 9.h),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 31.h),
                  child: SizedBox(
                    height: 92.v,
                    child: VerticalDivider(
                      width: 3.h,
                      thickness: 3.v,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 5.h,
                    bottom: 14.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 29.v,
                        child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: SizedBox(
                          height: 29.v,
                          child: VerticalDivider(
                            width: 3.h,
                            thickness: 3.v,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    bottom: 14.v,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 28.v,
                        child: VerticalDivider(
                          width: 3.h,
                          thickness: 3.v,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: SizedBox(
                          height: 28.v,
                          child: VerticalDivider(
                            width: 3.h,
                            thickness: 3.v,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: SizedBox(
                          height: 28.v,
                          child: VerticalDivider(
                            width: 3.h,
                            thickness: 3.v,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "lbl_54".tr,
                  style: CustomTextStyles.displayLarge64,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: SizedBox(
            height: 175.v,
            child: VerticalDivider(
              width: 3.h,
              thickness: 3.v,
              color: theme.colorScheme.primary,
              indent: 132.h,
              endIndent: 14.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 45.v,
            bottom: 10.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_kg".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 47.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 132.h,
                  margin: EdgeInsets.only(left: 9.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 5.h),
                          child: VerticalDivider(
                            width: 3.h,
                            thickness: 3.v,
                            color: theme.colorScheme.primary,
                            indent: 16.h,
                            endIndent: 4.h,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.h),
                          child: VerticalDivider(
                            width: 3.h,
                            thickness: 3.v,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.9,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color:
                                  theme.colorScheme.primary.withOpacity(0.67),
                              indent: 16.h,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.8,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color:
                                  theme.colorScheme.primary.withOpacity(0.64),
                              indent: 16.h,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.7,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color: theme.colorScheme.primary.withOpacity(0.6),
                              indent: 16.h,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.6,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color:
                                  theme.colorScheme.primary.withOpacity(0.56),
                              indent: 16.h,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color:
                                  theme.colorScheme.primary.withOpacity(0.53),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.4,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color:
                                  theme.colorScheme.primary.withOpacity(0.49),
                              indent: 16.h,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color:
                                  theme.colorScheme.primary.withOpacity(0.46),
                              indent: 16.h,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color:
                                  theme.colorScheme.primary.withOpacity(0.42),
                              indent: 16.h,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color:
                                  theme.colorScheme.primary.withOpacity(0.39),
                              indent: 16.h,
                              endIndent: 4.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButtonsRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
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
      ),
    );
  }
}
