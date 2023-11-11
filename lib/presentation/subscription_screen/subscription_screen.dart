import 'controller/subscription_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';
import 'package:yasir_s_application3/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class SubscriptionScreen extends GetWidget<SubscriptionController> {
  const SubscriptionScreen({Key? key})
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
              SizedBox(
                height: 459.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackground459x375,
                      height: 459.v,
                      width: 375.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 32.h,
                          bottom: 64.v,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_be_premium".tr,
                              style: CustomTextStyles
                                  .headlineMediumIntegralCFWhiteA700,
                            ),
                            SizedBox(height: 12.v),
                            SizedBox(
                              width: 202.h,
                              child: Text(
                                "msg_get_unlimited_access".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .headlineSmallIntegralCFRegular25
                                    .copyWith(
                                  height: 1.20,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.v),
                            SizedBox(
                              width: 183.h,
                              child: Text(
                                "msg_when_you_subscribe".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.23,
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
              SizedBox(height: 28.v),
              _buildSubscriptionMonthly(),
              SizedBox(height: 16.v),
              _buildSubscriptionYearly(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSubscribeNow(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscriptionMonthly() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineRedA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 36.v,
            width: 158.h,
            margin: EdgeInsets.only(top: 7.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Obx(
                    () => CustomRadioButton(
                      text: "lbl_monthly".tr,
                      value: "lbl_monthly".tr,
                      groupValue: controller.radioGroup.value,
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "msg_pay_monthly_cancel".tr,
                    style: CustomTextStyles.bodySmallRedA400019,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 26.v,
            ),
            child: Text(
              "lbl".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              bottom: 16.v,
            ),
            child: Text(
              "lbl_19_99".tr,
              style: CustomTextStyles.titleLargeOpenSansSemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 9.v,
              bottom: 19.v,
            ),
            child: Text(
              "lbl_m".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscriptionYearly() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 36.v,
            width: 109.h,
            margin: EdgeInsets.only(top: 7.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Obx(
                    () => CustomRadioButton(
                      text: "lbl_yearly".tr,
                      value: "lbl_yearly".tr,
                      groupValue: controller.radioGroup1.value,
                      onChange: (value) {
                        controller.radioGroup1.value = value;
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "msg_pay_for_a_full_year".tr,
                    style: CustomTextStyles.bodySmall9,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 26.v,
            ),
            child: Text(
              "lbl".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              bottom: 16.v,
            ),
            child: Text(
              "lbl_129_99".tr,
              style: CustomTextStyles.titleLargeOpenSansSemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(6.h, 11.v, 4.h, 18.v),
            child: Text(
              "lbl_y".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubscribeNow() {
    return CustomElevatedButton(
      text: "lbl_subscribe_now".tr,
      margin: EdgeInsets.only(
        left: 56.h,
        right: 56.h,
        bottom: 32.v,
      ),
    );
  }
}
