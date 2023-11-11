import 'controller/payment_completed_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasir_s_application3/core/app_export.dart';
import 'package:yasir_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PaymentCompletedScreen extends GetWidget<PaymentCompletedController> {
  const PaymentCompletedScreen({Key? key})
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
          padding: EdgeInsets.symmetric(horizontal: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 45.v),
              Padding(
                padding: EdgeInsets.only(right: 52.h),
                child: Row(
                  children: [
                    Container(
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      margin: EdgeInsets.only(bottom: 4.v),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgClosePrimary,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 7.v,
                            width: 10.h,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "msg_payment_completed".tr,
                        style: CustomTextStyles.titleLargeOpenSans,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: 224.h,
                margin: EdgeInsets.only(right: 86.h),
                child: Text(
                  "msg_you_ve_book_a_new".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMedium15.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 37.v),
              _buildPaymentCompleted(),
            ],
          ),
        ),
        bottomNavigationBar: _buildDone(),
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentCompleted() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 61.v,
            width: 177.h,
            margin: EdgeInsets.only(left: 2.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "lbl_trainer".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_emily_kevin".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          Container(
                            height: 13.v,
                            width: 27.h,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              bottom: 5.v,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPoint,
                                  height: 13.v,
                                  width: 27.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text(
                                      "lbl_4_9".tr,
                                      style: theme.textTheme.labelSmall,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.v),
                      Padding(
                        padding: EdgeInsets.only(right: 11.h),
                        child: Text(
                          "msg_high_intensity_training".tr,
                          style: CustomTextStyles.bodySmallPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage40x40,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.bottomLeft,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.gray800,
            indent: 2.h,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_date".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "msg_20_october_2021".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_time".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "lbl_09_30_am".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgNotification,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 13.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDone() {
    return CustomElevatedButton(
      text: "lbl_done".tr,
      margin: EdgeInsets.only(
        left: 56.h,
        right: 56.h,
        bottom: 32.v,
      ),
    );
  }
}
